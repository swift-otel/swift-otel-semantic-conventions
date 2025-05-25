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
    @Test func decodeDeprecated() throws {
        let actual = try YAMLDecoder().decode(
            [Deprecated].self,
            from: """
                - 'Replaced by `jvm.buffer.memory.used`.'
                - reason: obsoleted
                - reason: renamed
                  renamed_to: foo.unique_id
                - reason: uncategorized
                  note: This field is deprecated for some complex reasons.
                - reason: renamed
                  renamed_to: foo.unique_id
                  note: Replaced by a new attribute `foo.unique_id`.
                """
        )
        #expect(
            actual == [
                .uncategorized(note: "Replaced by `jvm.buffer.memory.used`."),
                .obsoleted(note: nil),
                .renamed(renamed_to: "foo.unique_id", note: nil),
                .uncategorized(note: "This field is deprecated for some complex reasons."),
                .renamed(renamed_to: "foo.unique_id", note: "Replaced by a new attribute `foo.unique_id`."),
            ]
        )
    }
}
