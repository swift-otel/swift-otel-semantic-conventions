/// Renders a file that extends `OTelAttribute` with a static property for each attribute name
struct OTelAttributeRenderer: FileRenderer {
    let targetDirectory = "OTelConventions/"
    let fileNamePrefix = "OTelAttribute+"

    func renderFile(_ namespace: Namespace) throws -> String {
        return try """
        extension OTelAttribute {
        \(renderNamespace(namespace, indent: 4))
        }

        """
    }

    private func renderNamespace(_ namespace: Namespace, indent: Int) throws -> String {
        var result = "/// `\(namespace.id)` namespace"
        result.append("\npublic enum \(namespace.memberName) {")
        try result.append(
            "\n" +
                namespace.attributes.values.sorted { $0.id < $1.id }.map { attribute in
                    try renderAttribute(attribute, namespace, indent: 4)
                }.joined(separator: "\n\n")
        )
        try result.append(
            "\n\n" +
                namespace.subNamespaces.values.sorted { $0.id < $1.id }.map { child in
                    try renderNamespace(child, indent: 4)
                }.joined(separator: "\n\n")
        )
        result.append("\n}")
        return result
            .split(separator: "\n", omittingEmptySubsequences: false)
            .map { String(repeating: " ", count: indent) + $0 }
            .joined(separator: "\n")
    }

    private func renderAttribute(_ attribute: Attribute, _ namespace: Namespace, indent: Int) throws -> String {
        var result = renderDocs(attribute)
        if let deprecatedMessage = attribute.deprecated {
            result.append("\n@available(*, deprecated, message: \"\(deprecatedMessage)\")")
        }
        try result.append("\npublic static let \(swiftOTelAttributePropertyName(attribute, namespace)) = \"\(attribute.id)\"")

        return result.split(separator: "\n", omittingEmptySubsequences: false)
            .map { String(repeating: " ", count: indent) + $0 }
            .joined(separator: "\n")
    }
}

// Returns the Swift path to any input attribute based on the input namespace
func swiftOTelAttributePath(_ attribute: Attribute, _ namespace: Namespace) throws -> String {
    return try swiftOTelNamespacePath(namespace) + "." + swiftOTelAttributePropertyName(attribute, namespace)
}

private func swiftOTelNamespacePath(_ namespace: Namespace) -> String {
    var path = ["OTelAttribute"]
    for subNamespaceName in namespace.id.split(separator: ".") {
        path.append(nameGenerator.swiftMemberName(for: String(subNamespaceName)))
    }
    return path.joined(separator: ".")
}

private func swiftOTelAttributePropertyName(_ attribute: Attribute, _ namespace: Namespace) throws -> String {
    guard let attributeName = attribute.id.split(separator: ".").last else {
        throw GeneratorError.attributeNameNotFound(namespace.id)
    }
    var propertyName = nameGenerator.swiftMemberName(for: String(attributeName))
    // In the case where we have both an attribute and a namespace overlapping (deployment.environment & deployment.environment.name), the attribute gets an underscore in order to avoid name clobbering.
    if namespace.subNamespaces[propertyName] != nil {
        propertyName = "_\(propertyName)"
    }
    return propertyName
}
