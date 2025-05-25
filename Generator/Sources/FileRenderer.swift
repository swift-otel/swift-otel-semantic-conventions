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
    func renderFile(_ namespace: Namespace) throws -> String
}

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
