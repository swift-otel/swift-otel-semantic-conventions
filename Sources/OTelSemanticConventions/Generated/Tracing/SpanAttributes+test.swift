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

#if Tracing

import Tracing

extension SpanAttributes {
    #if Experimental
    /// `test` namespace
    public var test: TestAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct TestAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
        }

        /// `test.case` namespace
        public var `case`: CaseAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct CaseAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `test.case.name`: The fully qualified human readable name of the [test case](https://wikipedia.org/wiki/Test_case).
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `org.example.TestCase1.test1`
                ///     - `example/tests/TestCase1.test1`
                ///     - `ExampleTestCase1_test1`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.test.`case`.name) }
            }

            /// `test.case.result` namespace
            public var result: ResultAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct ResultAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `test.case.result.status`: The status of the actual test case result from test execution.
                    ///
                    /// - Stability: development
                    /// - Type: enum
                    ///     - `pass`: pass
                    ///     - `fail`: fail
                    /// - Examples:
                    ///     - `pass`
                    ///     - `fail`
                    public var status: SpanAttributeKey<StatusEnum> {
                        .init(name: OTelAttribute.test.`case`.result.status)
                    }

                    public struct StatusEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                        public let rawValue: String
                        public init(rawValue: String) {
                            self.rawValue = rawValue
                        }
                        public func toSpanAttribute() -> Tracing.SpanAttribute {
                            .string(self.rawValue)
                        }
                    }
                }
            }
        }

        /// `test.suite` namespace
        public var suite: SuiteAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct SuiteAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `test.suite.name`: The human readable name of a [test suite](https://wikipedia.org/wiki/Test_suite).
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `TestSuite1`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.test.suite.name) }
            }

            /// `test.suite.run` namespace
            public var run: RunAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct RunAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

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
                    public var status: SpanAttributeKey<StatusEnum> { .init(name: OTelAttribute.test.suite.run.status) }

                    public struct StatusEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                        public let rawValue: String
                        public init(rawValue: String) {
                            self.rawValue = rawValue
                        }
                        public func toSpanAttribute() -> Tracing.SpanAttribute {
                            .string(self.rawValue)
                        }
                    }
                }
            }
        }
    }
    #endif
}

#endif
