import ArgumentParser
import AsyncHTTPClient
import Foundation
import Yams
import ZIPFoundation

@main
struct Generator: AsyncParsableCommand {
    @Option(name: .shortAndLong, help: "The version of semantic conventions to generate from.")
    var version: String

    @Option(name: .shortAndLong, help: "A comma-separated list of top-level namespaces to use in the generation. If not included, all namespaces will be generated.")
    var namespaces: String? = nil

    @Option(name: .shortAndLong, help: "The root of the swift-otel-semantic-conventions directory in which the generated files should be saved.")
    var repoDirectory: URL = URL.currentDirectory().deletingLastPathComponent()

    @Option(name: .shortAndLong, help: "The directory in which to cache the semantic conventions source files.")
    var cacheDirectory: URL = URL.temporaryDirectory.appending(path: "swift-otel-semantic-conventions/")

    mutating func validate() throws {
        guard version.starts(with: "v") else {
            throw ValidationError("Version must start with 'v'")
        }
    }

    mutating func run() async throws {
        let semConvRepoDirectory = cacheDirectory.appending(path: "semantic-conventions-\(version.dropFirst())/")

        // Get semconv & cache locally
        let fileManager = FileManager()
        if !fileManager.fileExists(atPath: semConvRepoDirectory.path()) {
            try fileManager.createDirectory(at: cacheDirectory, withIntermediateDirectories: true)

            // Download
            let semConvArchive = cacheDirectory.appending(path: "\(version).zip")
            let request = try HTTPClient.Request(url: "https://github.com/open-telemetry/semantic-conventions/archive/refs/tags/\(version).zip")
            let fileDownloadDelegate = try FileDownloadDelegate(path: semConvArchive.path())
            let _ = try await HTTPClient.shared.execute(request: request, delegate: fileDownloadDelegate).get()
            print("Downloded version \(version) to \(semConvArchive.path())")

            // Unzip
            let sourceURL = semConvArchive
            let destinationURL = cacheDirectory
            try fileManager.unzipItem(at: sourceURL, to: destinationURL)
            assert(fileManager.fileExists(atPath: semConvRepoDirectory.path()), "Expected \(semConvRepoDirectory) to exist. Check zip file structure.")
            print("Unzipped to \(semConvRepoDirectory.path()).")
        }

        // Parse semconv registry files
        let semConvModelsDirectory = semConvRepoDirectory.appending(path: "model/")
        var parsedAttributes = [Attribute]()
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
                for groupAttribute in group.attributes {
                    parsedAttributes.append(groupAttribute)
                }
            }
        }

        // Filter out attributes that are not stable
        parsedAttributes = parsedAttributes.filter { attribute in
            return attribute.stability != .development && attribute.stability != .experimental
        }

        // Create semconv namespace tree
        let namespaceTree = Namespace(id: "")
        for attribute in parsedAttributes {
            let path = attribute.id.split(separator: ".")
            var namespace = namespaceTree
            var walkedPath = [String]()
            for pathElement in path[0 ..< (path.count - 1)] {
                let pathElement = String(pathElement)
                walkedPath.append(pathElement)

                let nextNamespace = namespace.subNamespaces[pathElement] ?? {
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

        // Generate files
        var topLevelNamespaces = namespaceTree.subNamespaces.values.sorted(by: { $0.id < $1.id })

        if let namespaces = namespaces {
            let namespaceSet = Set(namespaces.split(separator: ",").map { String($0) })
            // Filter to only include the specified namespaces
            topLevelNamespaces = topLevelNamespaces.filter { namespaceSet.contains($0.id) }
        }

        // Generate individual target files
        let renderers: [FileRenderer] = [
            OTelAttributeRenderer(),
            SpanAttributeRenderer(),
        ]
        for renderer in renderers {
            let directory = repoDirectory.appending(path: "Sources/\(renderer.targetDirectory)Generated/")
            if fileManager.fileExists(atPath: directory.path()) {
                try fileManager.removeItem(at: directory)
            }
            try fileManager.createDirectory(at: directory, withIntermediateDirectories: true)

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
}

let generatedFileHeader = """
// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all


"""
let nameGenerator = IdiomaticSafeNameGenerator(defensive: .init())

enum GeneratorError: Error {
    case attributeNameNotFound(String)
    case namespaceNameNotFound(String)
}

extension URL: @retroactive ExpressibleByArgument {
    public init?(argument: String) {
        self.init(fileURLWithPath: argument)
    }
}
