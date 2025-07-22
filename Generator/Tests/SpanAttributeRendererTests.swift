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

import Testing

@testable import Generator

@Suite("SpanAttributeRendererTests")
struct SpanAttributeRendererTests {
    @Test func renderAnySpanAttribute() throws {
        let namespace = Namespace(
            id: "foo",
            attributes: [
                "bar": Attribute(id: "foo.bar", type: Attribute.StandardType.any)
            ]
        )
        let context = Context(
            rootNamespace: Namespace(id: "", subNamespaces: ["foo": namespace]),
            doccSymbolReferences: [:]
        )
        let renderer = SpanAttributeRenderer(context: context)

        let output = try renderer.renderFile(namespace)

        let declaration = "public var bar: SpanAttributeKey<SpanAttribute> { .init(name: OTelAttribute.foo.bar) }"
        #expect(output.contains(declaration))
    }
}
