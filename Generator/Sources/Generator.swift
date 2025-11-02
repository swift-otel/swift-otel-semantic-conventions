//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift OTel open source project
//
// Copyright (c) 2025 the Swift OTel project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

import ArgumentParser
import AsyncHTTPClient
import Foundation
import Yams
import ZIPFoundation

@main
struct Generator: AsyncParsableCommand {
    @Option(name: .shortAndLong, help: "The version of semantic conventions to generate from.")
    var version: String

    @Option(
        name: .shortAndLong,
        help:
            "A comma-separated list of top-level namespaces to use in the generation. If not included, all namespaces except `aspnetcore`, `jvm`, `nodejs`, `signalr`, `dotnet`, and `v8js` will be generated."
    )
    var namespaces: String? = nil

    @Option(
        name: .shortAndLong,
        help: "The root of the swift-otel-semantic-conventions directory in which the generated files should be saved."
    )
    var repoDirectory: URL = URL.currentDirectory().deletingLastPathComponent()

    @Option(name: .shortAndLong, help: "The directory in which to cache the semantic conventions source files.")
    var cacheDirectory: URL = URL.temporaryDirectory.appending(path: "swift-otel-semantic-conventions/")

    mutating func validate() throws {
        guard version.starts(with: "v") else {
            throw ValidationError("Version must start with 'v'")
        }
    }

    mutating func run() async throws {
        let fileManager = FileManager()

        // Download the semantic conventions repository
        let semConvRepoDirectory = cacheDirectory.appending(path: "semantic-conventions-\(version.dropFirst())/")
        try await cacheSemConv(
            fileManager: fileManager,
            cacheDirectory: cacheDirectory,
            semConvRepoDirectory: semConvRepoDirectory
        )

        // Parse semconv registry files
        let semConvModelsDirectory = semConvRepoDirectory.appending(path: "model/")
        var (groups, parsedAttributes) = try await parseAttributes(
            fileManager: fileManager,
            semConvModelsDirectory: semConvModelsDirectory
        )

        // Create semconv namespace tree
        let namespaceTree = try constructNamespaceTree(attributes: parsedAttributes)

        // Collect and filter top-level namespaces
        if let namespaces = namespaces {
            let namespaceSet = Set(namespaces.split(separator: ",").map { String($0) })
            // Filter to only include the specified namespaces
            for (id, _) in namespaceTree.subNamespaces {
                if !namespaceSet.contains(id) {
                    namespaceTree.subNamespaces.removeValue(forKey: id)
                }
            }
        } else {
            // Filter to exclude these namespaces by default
            let excludedNamespaces: Set<String> = ["aspnetcore", "jvm", "nodejs", "signalr", "dotnet", "v8js"]
            for (id, _) in namespaceTree.subNamespaces {
                if excludedNamespaces.contains(id) {
                    namespaceTree.subNamespaces.removeValue(forKey: id)
                }
            }
        }

        let context = Context(rootNamespace: namespaceTree, doccSymbolReferences: [:])

        // Generate individual target files
        try render(
            fileManager: fileManager,
            repoDirectory: repoDirectory,
            rootNamespace: namespaceTree,
            renderers: [
                OTelAttributeRenderer(context: context),
                SpanAttributeRenderer(context: context),
            ]
        )

        try generateDocumentationCatalog(context: context, groups: groups, repoDirectory: repoDirectory)
        try updateReadmeSemConvBadge(repoDirectory: repoDirectory)
    }

    /// Checks cache, and if necessary downloads and unzips the semantic conventions repository
    private func cacheSemConv(fileManager: FileManager, cacheDirectory: URL, semConvRepoDirectory: URL) async throws {
        if !fileManager.fileExists(atPath: semConvRepoDirectory.path()) {
            try fileManager.createDirectory(at: cacheDirectory, withIntermediateDirectories: true)

            // Download
            let semConvArchive = cacheDirectory.appending(path: "\(version).zip")
            let request = try HTTPClient.Request(
                url: "https://github.com/open-telemetry/semantic-conventions/archive/refs/tags/\(version).zip"
            )
            let fileDownloadDelegate = try FileDownloadDelegate(path: semConvArchive.path())
            let _ = try await HTTPClient.shared.execute(request: request, delegate: fileDownloadDelegate).get()
            print("Downloded version \(version) to \(semConvArchive.path())")

            // Unzip
            let sourceURL = semConvArchive
            let destinationURL = cacheDirectory
            try fileManager.unzipItem(at: sourceURL, to: destinationURL)
            assert(
                fileManager.fileExists(atPath: semConvRepoDirectory.path()),
                "Expected \(semConvRepoDirectory) to exist. Check zip file structure."
            )
            print("Unzipped to \(semConvRepoDirectory.path()).")
        } else {
            print("Using cached version at \(semConvRepoDirectory.path()).")
        }
    }

    /// Checks cache, and if necessary downloads and unzips the semantic conventions repository
    private func parseAttributes(
        fileManager: FileManager,
        semConvModelsDirectory: URL
    ) async throws -> ([Group], [String: Attribute]) {
        var groups = [Group]()
        var parsedAttributes = [String: Attribute]()
        for element in try fileManager.subpathsOfDirectory(atPath: semConvModelsDirectory.path()) {
            // Currently we only support parsing the `registry` files.
            // TODO: Expand support to metric/span files, which involves handling `ref` type attributes.
            guard element.hasSuffix("registry.yaml") || element.hasSuffix("registry-deprecated.yaml") else {
                continue
            }
            let filePath = semConvModelsDirectory.appending(path: element)
            guard
                let fileData = fileManager.contents(atPath: filePath.path()),
                let fileContents = String(data: fileData, encoding: .utf8)
            else {
                print("warning: No data found at \(filePath.path())")
                continue
            }
            let file: RegistryFile
            do {
                file = try YAMLDecoder().decode(RegistryFile.self, from: fileContents)
            } catch {
                print("Error decoding \(filePath.path())")
                throw error
            }

            for group in file.groups {
                groups.append(group)
                for groupAttribute in group.attributes {
                    switch groupAttribute {
                    case let .attribute(attribute):
                        parsedAttributes[attribute.id] = attribute
                    default:
                        // Since refs don't introduce new names, we just resolve them later
                        break
                    }
                }
            }
        }
        return (groups, parsedAttributes)
    }

    /// Constructs a tree of namespaces from a list of attributes.
    private func constructNamespaceTree(
        attributes: [String: Attribute]
    ) throws -> Namespace {
        let root = Namespace(id: "")
        for (_, attribute) in attributes {
            let path = attribute.id.split(separator: ".")
            var namespace = root
            var walkedPath = [String]()
            for pathElement in path[0..<(path.count - 1)] {
                let pathElement = String(pathElement)
                walkedPath.append(pathElement)

                let nextNamespace =
                    namespace.subNamespaces[pathElement]
                    ?? {
                        let newNamespace = Namespace(id: walkedPath.joined(separator: "."))
                        namespace.subNamespaces[pathElement] = newNamespace
                        return newNamespace
                    }()
                namespace = nextNamespace
            }
            guard let attributeName = path.last.map({ String($0) }) else {
                throw GeneratorError.attributeNameNotFound(attribute.id)
            }
            namespace.attributes[attributeName] = attribute
        }
        return root
    }

    /// Generates files based on the provided namespaces and renderers.
    private func render(
        fileManager: FileManager,
        repoDirectory: URL,
        rootNamespace: Namespace,
        renderers: [FileRenderer]
    ) throws {
        for renderer in renderers {
            let directory = repoDirectory.appending(
                components:
                    "Sources",
                "OTelSemanticConventions",
                "Generated",
                renderer.targetDirectory
            )
            if fileManager.fileExists(atPath: directory.path()) {
                try fileManager.removeItem(at: directory)
            }
            try fileManager.createDirectory(at: directory, withIntermediateDirectories: true)

            let topLevelNamespaces = rootNamespace.subNamespaces.values.sorted(by: { $0.id < $1.id })

            for namespace in topLevelNamespaces {
                let filePath = directory.appending(path: "\(renderer.fileNamePrefix)\(namespace.memberName).swift")
                var fileContents = generatedFileHeader
                fileContents += try renderer.renderFile(namespace)

                try? fileManager.removeItem(at: filePath)
                guard let fileData = fileContents.data(using: .utf8) else {
                    print("File data for \(filePath.path()) could not be encoded as UTF8")
                    continue
                }
                fileManager.createFile(atPath: filePath.path(), contents: fileData)
                print("Wrote file \(filePath.path()).")
            }
        }
    }

    /// Generate the DocC documentation catalog given the generated symbols.
    private func generateDocumentationCatalog(context: Context, groups: [Group], repoDirectory: URL) throws {
        var indexPage = """
            # ``OTelSemanticConventions``

            OpenTelemetry semantic conventions for Swift.

            @Metadata {
                @DisplayName("OTel Semantic Conventions")
                @PageColor(orange)
                @Available(Swift, introduced: 6.1)
            }

            @Options {
                @TopicsVisualStyle(hidden)
            }
            """

        let groups = groups.sorted { $0.id.localizedStandardCompare($1.id) == .orderedAscending }

        // render topics section

        var attributesSection = "\n\n"
        var topicsSection = "\n\n## Topics\n"

        for group in groups {
            var targetSymbols = [String: [String: String]]()
            for attribute in group.attributes {
                switch attribute {
                case let .attribute(attribute):
                    if let symbolReferences = context.doccSymbolReferences[attribute.id] {
                        for (target, symbolReference) in symbolReferences.sorted(by: { $0.key < $1.key }) {
                            targetSymbols[target, default: [:]][attribute.id] = symbolReference
                        }
                    }
                default:
                    // TODO
                    break
                }
            }

            guard !targetSymbols.isEmpty else {
                // ignore empty group
                continue
            }

            attributesSection += "\n## \(group.documentationTopic)\n\n"
            if let brief = group.brief {
                attributesSection += "\(brief)\n"
            }
            attributesSection += "@TabNavigator {\n"

            topicsSection += "\n### \(group.documentationTopic)\n\n"

            for (target, symbols) in targetSymbols.sorted(by: {
                $0.key.localizedStandardCompare($1.key) == .orderedAscending
            }) {
                attributesSection += """
                        @Tab("\(target)") {
                            @Links(visualStyle: list) {

                    """

                for (_, symbol) in symbols.sorted(by: { $0.key.localizedStandardCompare($1.key) == .orderedAscending })
                {
                    attributesSection += "            - ``\(symbol)``\n"
                    topicsSection += "- ``\(symbol)``\n"
                }

                attributesSection += "        }\n"
                attributesSection += "    }\n"
            }

            attributesSection += "}\n"
        }

        indexPage += attributesSection
        indexPage += topicsSection

        let catalogDirectory = repoDirectory.appending(
            components: "Sources",
            "OTelSemanticConventions",
            "Documentation.docc"
        )
        let indexPageURL = catalogDirectory.appending(path: "Documentation.md")
        try (indexPage).write(to: indexPageURL, atomically: true, encoding: .utf8)
        print("Generated DocC documentation catalog.")
    }

    /// Updates the README file with the new version of the semantic convention badge.
    private func updateReadmeSemConvBadge(repoDirectory: URL) throws {
        let readmePath = repoDirectory.appending(path: "README.md")
        var readmeContents = try String(contentsOf: readmePath)
        readmeContents.replace(
            /https:\/\/img\.shields\.io\/badge\/semconv-\d+\.\d+.\d+-blue\.svg/,
            with: "https://img.shields.io/badge/semconv-\(version.dropFirst())-blue.svg"
        )
        try readmeContents.write(to: readmePath, atomically: true, encoding: .utf8)
        print("Updated README with semconv badge with version \(version).")
    }
}

/// A recursive type that is used to collect attributes. Namespaces may contain sub-namespaces.
/// The attribute and subNamespace properties act as a prefix tree on the attribute and namespace ids.
class Namespace {
    // The full dot-separated path of the namespace. For example `http.request`
    let id: String
    // The final entry in the dot-separated path
    let name: String
    var attributes: [String: Attribute]
    var subNamespaces: [String: Namespace]

    init(id: String, attributes: [String: Attribute] = [:], subNamespaces: [String: Namespace] = [:]) {
        self.id = id
        self.attributes = attributes
        self.subNamespaces = subNamespaces
        self.name = String(id.split(separator: ".").last ?? "")
    }

    var typeName: String {
        nameGenerator.swiftTypeName(for: name)
    }

    var memberName: String {
        nameGenerator.swiftMemberName(for: name)
    }

    lazy var containsNoStableAttributes: Bool = {
        attributes.allSatisfy {
            $0.1.stability != .stable
        }
            && subNamespaces.values.allSatisfy {
                $0.containsNoStableAttributes
            }
    }()
}

let generatedFileHeader = """
    //===----------------------------------------------------------------------===//
    //
    // This source file is part of the Swift OTel open source project
    //
    // Copyright (c) 2025 the Swift OTel project authors
    // Licensed under Apache License v2.0
    //
    // See LICENSE.txt for license information
    //
    // SPDX-License-Identifier: Apache-2.0
    //
    //===----------------------------------------------------------------------===//

    // DO NOT EDIT. This file is generated automatically. See README for details.


    """
let nameGenerator = IdiomaticSafeNameGenerator(defensive: .init())

enum GeneratorError: Error {
    case attributeNameNotFound(String)
    case namespaceNameNotFound(String)
    case invalidAttributeID(String)
    case renderingError(String)
}

extension URL: @retroactive ExpressibleByArgument {
    public init?(argument: String) {
        self.init(fileURLWithPath: argument)
    }
}
