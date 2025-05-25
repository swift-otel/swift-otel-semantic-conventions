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
    @Test func testRenamed() {
        let actual = renderDeprecatedAttribute(
            .renamed(renamed_to: "bar.baz", note: "Replaced by a new attribute `bar.baz`"),
            extendedTypeName: "Foo"
        )
        #expect(
            actual
                == "@available(*, deprecated, renamed: \"Foo.bar.baz\", message: \"Replaced by a new attribute `bar.baz`\")"
        )
    }

    @Test func testRenamedNoNote() {
        let actual = renderDeprecatedAttribute(
            .renamed(renamed_to: "bar.baz", note: nil),
            extendedTypeName: "Foo"
        )
        #expect(
            actual
                == "@available(*, deprecated, renamed: \"Foo.bar.baz\")"
        )
    }

    @Test func testObsoleted() {
        let actual = renderDeprecatedAttribute(
            .obsoleted(note: "Don't use `bar.baz`"),
            extendedTypeName: "Foo"
        )
        #expect(
            actual
                == "@available(*, deprecated, message: \"Obsoleted: Don't use `bar.baz`\")"
        )
    }

    @Test func testObsoletedNoNote() {
        let actual = renderDeprecatedAttribute(
            .obsoleted(note: nil),
            extendedTypeName: "Foo"
        )
        #expect(
            actual
                == "@available(*, deprecated, message: \"Obsoleted\")"
        )
    }

    @Test func testUncategorized() {
        let actual = renderDeprecatedAttribute(
            .uncategorized(note: "No additional information about `bar.baz`"),
            extendedTypeName: "Foo"
        )
        #expect(
            actual
                == "@available(*, deprecated, message: \"No additional information about `bar.baz`\")"
        )
    }

    @Test func testUncategorizedNoNote() {
        let actual = renderDeprecatedAttribute(
            .uncategorized(note: nil),
            extendedTypeName: "Foo"
        )
        #expect(
            actual
                == "@available(*, deprecated)"
        )
    }
}
