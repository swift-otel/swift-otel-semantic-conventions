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

/// Renders a file that extends `SpanAttribute` with type-safe properties for each attribute.
struct SpanAttributeRenderer: FileRenderer {
    let targetDirectory = "Tracing"
    let fileNamePrefix = "SpanAttributes+"

    let context: Context

    func renderFile(_ namespace: Namespace) throws -> String {
        try """
        #if Tracing

        import Tracing

        extension SpanAttributes {
        \(renderNamespace(namespace, indent: 4, doccSymbolPrefix: ["Tracing", "SpanAttributes"]))
        }

        #endif

        """
    }

    func attributeIDToSwiftMemberPath(_ attributeID: String) throws -> String {
        var path = ["SpanAttributes"]

        let components = attributeID.split(separator: ".").map { String($0) }
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
        try path.append(attributeMemberName(attributeID, namespace))
        return path.joined(separator: ".")
    }

    private func renderNamespace(
        _ namespace: Namespace,
        inSpanNamespace: Bool = false,
        indent: Int,
        doccSymbolPrefix: [String]
    ) throws -> String {
        let propertyName = namespace.memberName
        let structName = nameGenerator.swiftTypeName(for: "\(namespace.name)Attributes")

        let standardAttributes = namespace.attributes.values.filter { !isTemplateType($0.type) }
        let templateAttributes = namespace.attributes.values.filter { isTemplateType($0.type) }

        var result = "/// `\(namespace.id)` namespace"
        result.append(
            """

            public var \(propertyName): \(structName) {
                get {
                    .init(attributes: \(inSpanNamespace ? "self.attributes" : "self"))
                }
                set {
                    \(inSpanNamespace ? "self.attributes" : "self") = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct \(structName): SpanAttributeNamespace {
                public var attributes: SpanAttributes

                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            """
        )
        if !templateAttributes.isEmpty {
            try result.append(
                "\n\n"
                    + templateAttributes.sorted {
                        $0.id < $1.id
                    }.map { attribute in
                        try renderTemplateAttribute(
                            attribute,
                            namespace,
                            indent: 4,
                            doccSymbolPrefix: doccSymbolPrefix + [structName]
                        )
                    }.joined(separator: "\n\n")
            )
        }
        result.append(
            """


                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
            """
        )
        if !standardAttributes.isEmpty {
            try result.append(
                "\n\n"
                    + standardAttributes.sorted {
                        $0.id < $1.id
                    }.map { attribute in
                        try renderStandardAttribute(
                            attribute,
                            namespace,
                            indent: 8,
                            doccSymbolPrefix: doccSymbolPrefix + [structName, "NestedSpanAttributes"]
                        )
                    }.joined(separator: "\n\n")
            )
        }

        result.append("\n    }")
        if !namespace.subNamespaces.values.isEmpty {
            try result.append(
                "\n\n"
                    + namespace.subNamespaces.values.sorted {
                        $0.id < $1.id
                    }.map { child in
                        try renderNamespace(
                            child,
                            inSpanNamespace: true,
                            indent: 4,
                            doccSymbolPrefix: doccSymbolPrefix + [structName]
                        )
                    }.joined(separator: "\n\n")
            )
        }
        result.append("\n}")
        return result.indent(by: indent)
    }

    private func renderStandardAttribute(
        _ attribute: Attribute,
        _ namespace: Namespace,
        indent: Int,
        doccSymbolPrefix: [String]
    ) throws -> String {
        guard let attributeName = attribute.id.split(separator: ".").last else {
            throw GeneratorError.attributeNameNotFound(attribute.id)
        }
        let propertyName = try attributeMemberName(attribute.id, namespace)
        let symbolReference = (doccSymbolPrefix + [propertyName])
            .joined(separator: "/")
            .replacingOccurrences(of: "`", with: "")
        context.doccSymbolReferences[attribute.id, default: [:]]["Span Attributes"] = symbolReference

        var result = renderDocs(attribute)
        if let deprecated = attribute.deprecated {
            result.append("\n" + renderDeprecatedAttribute(deprecated))
        }

        let swiftType: String
        // Use the OTelAttributeRenderer to get the Swift path for the attribute.
        let otelAttributeFileRenderer = OTelAttributeRenderer(context: context)
        let otelAttributePath = try otelAttributeFileRenderer.attributeIDToSwiftMemberPath(attribute.id)
        if let type = attribute.type as? Attribute.StandardType {
            switch type {
            case .boolean: swiftType = "Bool"
            case .booleanArray: swiftType = "[Bool]"
            case .double: swiftType = "Double"
            case .doubleArray: swiftType = "[Double]"
            case .int: swiftType = "Int"
            case .intArray: swiftType = "[Int]"
            case .string: swiftType = "String"
            case .stringArray: swiftType = "[String]"
            default:
                throw SpanAttributeRendererError.invalidStandardAttributeType(attribute.type)
            }
            result.append(
                "\npublic var \(propertyName): SpanAttributeKey<\(swiftType)> { .init(name: \(otelAttributePath)) }"
            )
        } else if let type = attribute.type as? Attribute.EnumType {
            let enumTypeName = "\(nameGenerator.swiftTypeName(for: "\(attributeName)Enum"))"
            result.append(
                "\npublic var \(propertyName): SpanAttributeKey<\(enumTypeName)> { .init(name: \(otelAttributePath)) }"
            )

            // Enum types are not represented as Swift enums to avoid breaking changes when new enum values are added.
            // Instead we use a struct with static properties for each enum value.
            result.append("\n\npublic struct \(enumTypeName): SpanAttributeConvertible, RawRepresentable, Sendable {")
            result.append("\n    public let rawValue: String")
            result.append(
                """

                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
                """
            )
            for member in type.members {
                guard member.stability == .stable else { continue }
                let caseName = nameGenerator.swiftMemberName(for: member.id)
                result.append("\n    /// `\(member.value)`")
                if let brief = member.brief {
                    result.append(": \(brief.trimmingCharacters(in: .whitespacesAndNewlines))")
                }
                if let deprecatedMessage = member.deprecated {
                    result.append("\n    @available(*, deprecated, message: \"\(deprecatedMessage)\")")
                }
                result.append("\n    public static let \(caseName) = Self.init(rawValue: \"\(member.value)\")")
            }

            result.append(
                """

                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
                """
            )
        } else {
            throw SpanAttributeRendererError.invalidStandardAttributeType(attribute.type)
        }

        return result.indent(by: indent)
    }

    private func renderTemplateAttribute(
        _ attribute: Attribute,
        _ namespace: Namespace,
        indent: Int,
        doccSymbolPrefix: [String]
    ) throws -> String {
        guard let attributeName = attribute.id.split(separator: ".").last else {
            throw GeneratorError.attributeNameNotFound(attribute.id)
        }
        let swiftName = try attributeMemberName(attribute.id, namespace)
        let symbolReference = (doccSymbolPrefix + [swiftName])
            .joined(separator: "/")
            .replacingOccurrences(of: "`", with: "")
        context.doccSymbolReferences[attribute.id, default: [:]]["Span Attributes"] = symbolReference
        let structName = nameGenerator.swiftTypeName(for: "\(attributeName)Attributes")

        let valueType: String
        guard let type = attribute.type as? Attribute.StandardType else {
            throw SpanAttributeRendererError.invalidTemplateAttributeType(attribute.type)
        }
        switch type {
        case .templateBoolean: valueType = "Bool"
        case .templateBooleanArray: valueType = "[Bool]"
        case .templateDouble: valueType = "Double"
        case .templateDoubleArray: valueType = "[Double]"
        case .templateInt: valueType = "Int"
        case .templateIntArray: valueType = "[Int]"
        case .templateString: valueType = "String"
        case .templateStringArray: valueType = "[String]"
        default:
            throw SpanAttributeRendererError.invalidTemplateAttributeType(attribute.type)
        }

        // getTemplateType

        var result = renderDocs(attribute)
        result.append(
            """

            public var \(swiftName): \(structName) {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct \(structName) {
                public var attributes: SpanAttributes

                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: \(valueType)) {
                    let attributeID = self.attributeID(forKey: key)
                    self.attributes[attributeID] = value
                }

                private func attributeID(forKey key: String) -> String {
                    var attributeID = "\(attribute.id)."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeID.append("_")
                        } else {
                            attributeID.append(character.lowercased())
                        }
                    }

                    return attributeID
                }
            }
            """
        )
        return result.indent(by: indent)
    }

    private func isTemplateType(_ type: Attribute.AttributeType) -> Bool {
        if let standardType = type as? Attribute.StandardType {
            switch standardType {
            case .templateBoolean, .templateBooleanArray, .templateInt, .templateIntArray, .templateDouble,
                .templateDoubleArray, .templateString, .templateStringArray:
                return true
            case .boolean, .booleanArray, .int, .intArray, .double, .doubleArray, .string, .stringArray, .any:
                return false
            }
        } else {
            return false
        }
    }
}

enum SpanAttributeRendererError: Error {
    case invalidEnumAttributeType(Attribute.AttributeType)
    case invalidStandardAttributeType(Attribute.AttributeType)
    case invalidTemplateAttributeType(Attribute.AttributeType)
}
