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
import Yams

@testable import Generator

struct DecodingTests {

    @Test func decodeDeprecatedString() throws {
        let actual = try YAMLDecoder().decode(
            Deprecated.self,
            from: "'Replaced by `jvm.buffer.memory.used`.'"
        )
        #expect(actual == .uncategorized(note: "Replaced by `jvm.buffer.memory.used`."))
    }

    @Test func decodeDeprecatedObsoleted() throws {
        let actual = try YAMLDecoder().decode(
            Deprecated.self,
            from: "reason: obsoleted"
        )
        #expect(actual == .obsoleted(note: nil))
    }

    @Test func decodeDeprecatedRenamed() throws {
        let actual = try YAMLDecoder().decode(
            Deprecated.self,
            from: """
                reason: renamed
                renamed_to: foo.unique_id
                note: Replaced by a new attribute `foo.unique_id`.
                """
        )
        #expect(actual == .renamed(renamed_to: "foo.unique_id", note: "Replaced by a new attribute `foo.unique_id`."))
    }

    @Test func decodeDeprecatedRenamedNoNote() throws {
        let actual = try YAMLDecoder().decode(
            Deprecated.self,
            from: """
                reason: renamed
                renamed_to: foo.unique_id
                """
        )
        #expect(actual == .renamed(renamed_to: "foo.unique_id", note: nil))
    }

    @Test func decodeDeprecatedUncategorized() throws {
        let actual = try YAMLDecoder().decode(
            Deprecated.self,
            from: """
                reason: uncategorized
                note: This field is deprecated for some complex reasons.
                """
        )
        #expect(actual == .uncategorized(note: "This field is deprecated for some complex reasons."))
    }
}
