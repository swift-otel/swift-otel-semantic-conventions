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

/// Type that is able to render a file given a namespace
protocol FileRenderer {
    var targetDirectory: String { get }
    var fileNamePrefix: String { get }
    var context: Context { get }

    func renderFile(_ namespace: Namespace) throws -> String

    /// Converts an attribute ID to a Swift member path based on the type structure of the renderer.
    /// Example: "foo.bar_baz" -> "OTelAttribute.foo.barBaz"
    func attributeIDToSwiftMemberPath(_ attributeID: String) throws -> String
}

/// Contains top-level information about the rendering execution
struct Context {
    let rootNamespace: Namespace
}

extension FileRenderer {
    func renderDocs(_ attribute: Attribute) -> String {
        var result = "`\(attribute.id)`"
        if let brief = attribute.brief?.trimmingCharacters(in: .whitespacesAndNewlines), !brief.isEmpty {
            result.append(": \(brief)")
        }

        result.append("\n\n- Stability: \(attribute.stability)")
        if let attributeType = attribute.type as? Attribute.EnumType {
            result.append("\n- Type: enum")
            for member in attributeType.members {
                result.append("\n    - `\(member.value)`")
                if let brief = member.brief?.trimmingCharacters(in: .whitespacesAndNewlines), !brief.isEmpty {
                    result.append(": \(brief)")
                }
            }
        } else {
            result.append("\n- Type: \(attribute.type)")
        }
        if let examples = attribute.examples {
            if examples.count == 1 {
                result.append("\n- Example: `\(examples[0])`")
            } else {
                result.append("\n- Examples:")
                for example in examples {
                    result.append("\n    - `\(example)`")
                }
            }
        }

        if let note = attribute.note?.trimmingCharacters(in: .whitespacesAndNewlines), !note.isEmpty {
            result.append("\n\n\(note)")
        }

        return result.prefixLines(with: "/// ")
    }

    /// Render the `@available` Swift attribute for a deprecated OTel attribute
    ///
    /// - Parameters:
    ///   - deprecated: The `Deprecated` enum that describes the deprecation
    ///   - extendedTypeName: The name of the type being extended with this attribute (i.e. OTelAttribute, or SpanAttributes). Used in the `renamed` argument, if applicable.
    /// - Returns: A string representing the `@available` attribute for Swift
    func renderDeprecatedAttribute(_ deprecated: Deprecated) -> String {
        var result = "@available(*, deprecated"
        switch deprecated {
        case let .renamed(renamed_to, note):
            if let renamedTo = try? attributeIDToSwiftMemberPath(renamed_to) {
                result.append(", renamed: \"\(renamedTo)\"")
            }
            if let note = note?.trimmingCharacters(in: .whitespacesAndNewlines) {
                result.append(", message: \"\(note)\"")
            }
        case let .obsoleted(note):
            var message = "Obsoleted"
            if let note = note?.trimmingCharacters(in: .whitespacesAndNewlines) {
                message.append(": \(note)")
            }
            result.append(", message: \"\(message)\"")
        case let .uncategorized(note):
            if let note = note?.trimmingCharacters(in: .whitespacesAndNewlines) {
                result.append(", message: \"\(note)\"")
            }
        }
        result.append(")")
        return result
    }
}

/// Return the standard Swift member name for an attribute, on the final type that contains the attribute.
/// Example: "foo.bar_baz" -> "barBaz"
/// The provided namespace must be the parent of the attribute ID.
func attributeMemberName(_ attributeID: String, _ namespace: Namespace) throws -> String {
    let attributePath = attributeID.split(separator: ".")
    guard attributePath.count > 1 else {
        throw GeneratorError.invalidAttributeID(attributeID)
    }
    guard namespace.name == attributePath[attributePath.count - 2] else {
        throw GeneratorError.renderingError(
            "The provided namespace `\(namespace.name)` is not the parent of the attribute `\(attributeID)`"
        )
    }
    let attributeName = attributePath[attributePath.count - 1]
    var propertyName = nameGenerator.swiftMemberName(for: String(attributeName))
    // In the case where we have both an attribute and a namespace overlapping (deployment.environment & deployment.environment.name), the attribute gets an underscore in order to avoid name clobbering.
    if namespace.subNamespaces[propertyName] != nil {
        propertyName = "_\(propertyName)"
    }
    return propertyName
}

extension String {
    func prefixLines(with prefix: String) -> String {
        self.split(separator: "\n", omittingEmptySubsequences: false)
            .map { prefix + $0 }
            .joined(separator: "\n")
    }

    func indent(by spaces: Int) -> String {
        self.split(separator: "\n", omittingEmptySubsequences: false)
            .map { line in
                guard !line.isEmpty else {
                    // Don't indent empty lines
                    return line
                }
                return String(repeating: " ", count: spaces) + line
            }
            .joined(separator: "\n")
    }
}
