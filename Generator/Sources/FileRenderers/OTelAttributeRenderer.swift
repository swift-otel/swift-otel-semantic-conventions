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

/// Renders a file that extends `OTelAttribute` with a static property for each attribute name
struct OTelAttributeRenderer: FileRenderer {
    let targetDirectory = "AttributeNames"
    let fileNamePrefix = "OTelAttribute+"

    let context: Context

    func renderFile(_ namespace: Namespace) throws -> String {
        try """
        extension OTelAttribute {
        \(renderNamespace(namespace, indent: 4))
        }

        """
    }

    private func renderNamespace(_ namespace: Namespace, indent: Int) throws -> String {
        var properties: [String] = []
        try properties.append(
            contentsOf: namespace.attributes.values.sorted {
                $0.id < $1.id
            }.map { attribute in
                try renderAttribute(attribute, namespace, indent: 4)
            }
        )
        try properties.append(
            contentsOf: namespace.subNamespaces.values.sorted {
                $0.id < $1.id
            }.map { child in
                try renderNamespace(child, indent: 4)
            }
        )

        var result = "/// `\(namespace.id)` namespace"
        result.append("\npublic enum \(namespace.memberName) {")
        result.append("\n" + properties.joined(separator: "\n\n"))
        result.append("\n}")
        return result.indent(by: indent)
    }

    private func renderAttribute(_ attribute: Attribute, _ namespace: Namespace, indent: Int) throws -> String {
        var result = renderDocs(attribute)
        if let deprecated = attribute.deprecated {
            result.append("\n" + renderDeprecatedAttribute(deprecated))
        }
        try result.append(
            "\npublic static let \(attributeMemberName(attribute.id, namespace)) = \"\(attribute.id)\""
        )

        return result.indent(by: indent)
    }

    func attributeIdToSwiftMemberPath(_ attributeId: String) throws -> String {
        var path = ["OTelAttribute"]

        let components = attributeId.split(separator: ".").map { String($0) }
        guard components.count > 1 else {
            path.append(nameGenerator.swiftMemberName(for: components[0]))
            return path.joined(separator: ".")
        }

        // Walk the namespace tree, appending each name. Record the namespace so we can resolve the attribute name at the end.
        var namespace = context.rootNamespace
        for subNamespaceName in components[0..<components.count - 1] {
            guard let nextNamespace = namespace.subNamespaces[subNamespaceName] else {
                throw GeneratorError.namespaceNameNotFound(subNamespaceName)
            }
            path.append(nextNamespace.memberName)
            namespace = nextNamespace
        }
        try path.append(attributeMemberName(attributeId, namespace))
        return path.joined(separator: ".")
    }
}
