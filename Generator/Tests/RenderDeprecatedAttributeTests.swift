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

struct RenderDeprecatedAttributeTests {
    let renderer = OTelAttributeRenderer(
        context: Context(
            // Minimal namespace tree to resolve renamed deprecations
            rootNamespace: Namespace(
                id: "",
                subNamespaces: [
                    "foo": Namespace(
                        id: "foo",
                        attributes: [
                            "bar_baz": Attribute(
                                id: "foo.bar_baz",
                                type: Attribute.StandardType.string,
                            )
                        ],
                    )
                ]
            )
        )
    )

    @Test func testRenamed() {
        let actual = renderer.renderDeprecatedAttribute(
            .renamed(renamed_to: "foo.bar_baz", note: "Replaced by a new attribute `foo.bar_baz`"),
        )
        #expect(
            actual
                == "@available(*, deprecated, renamed: \"OTelAttribute.foo.barBaz\", message: \"Replaced by a new attribute `foo.bar_baz`\")"
        )
    }

    @Test func testRenamedNoNote() {
        let actual = renderer.renderDeprecatedAttribute(
            .renamed(renamed_to: "foo.bar_baz", note: nil),
        )
        #expect(
            actual
                == "@available(*, deprecated, renamed: \"OTelAttribute.foo.barBaz\")"
        )
    }

    @Test func testObsoleted() {
        let actual = renderer.renderDeprecatedAttribute(
            .obsoleted(note: "Don't use `foo.bar_baz`"),
        )
        #expect(
            actual
                == "@available(*, deprecated, message: \"Obsoleted: Don't use `foo.bar_baz`\")"
        )
    }

    @Test func testObsoletedNoNote() {
        let actual = renderer.renderDeprecatedAttribute(
            .obsoleted(note: nil),
        )
        #expect(
            actual
                == "@available(*, deprecated, message: \"Obsoleted\")"
        )
    }

    @Test func testUncategorized() {
        let actual = renderer.renderDeprecatedAttribute(
            .uncategorized(note: "No additional information about `foo.bar_baz`"),
        )
        #expect(
            actual
                == "@available(*, deprecated, message: \"No additional information about `foo.bar_baz`\")"
        )
    }

    @Test func testUncategorizedNoNote() {
        let actual = renderer.renderDeprecatedAttribute(
            .uncategorized(note: nil),
        )
        #expect(
            actual
                == "@available(*, deprecated)"
        )
    }
}
