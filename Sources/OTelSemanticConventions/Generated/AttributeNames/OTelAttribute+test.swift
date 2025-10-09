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

// DO NOT EDIT. This file is generated automatically. See README for details.

extension OTelAttribute {
    #if Experimental
    /// `test` namespace
    public enum test {
        /// `test.case` namespace
        public enum `case` {
            /// `test.case.name`: The fully qualified human readable name of the [test case](https://wikipedia.org/wiki/Test_case).
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `org.example.TestCase1.test1`
            ///     - `example/tests/TestCase1.test1`
            ///     - `ExampleTestCase1_test1`
            public static let name = "test.case.name"

            /// `test.case.result` namespace
            public enum result {
                /// `test.case.result.status`: The status of the actual test case result from test execution.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `pass`: pass
                ///     - `fail`: fail
                /// - Examples:
                ///     - `pass`
                ///     - `fail`
                public static let status = "test.case.result.status"
            }
        }

        /// `test.suite` namespace
        public enum suite {
            /// `test.suite.name`: The human readable name of a [test suite](https://wikipedia.org/wiki/Test_suite).
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `TestSuite1`
            public static let name = "test.suite.name"

            /// `test.suite.run` namespace
            public enum run {
                /// `test.suite.run.status`: The status of the test suite run.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `success`: success
                ///     - `failure`: failure
                ///     - `skipped`: skipped
                ///     - `aborted`: aborted
                ///     - `timed_out`: timed_out
                ///     - `in_progress`: in_progress
                /// - Examples:
                ///     - `success`
                ///     - `failure`
                ///     - `skipped`
                ///     - `aborted`
                ///     - `timed_out`
                ///     - `in_progress`
                public static let status = "test.suite.run.status"
            }
        }
    }
    #endif
}
