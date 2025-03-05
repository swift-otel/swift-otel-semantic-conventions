// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
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
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
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
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `test.case.name`: The fully qualified human readable name of the [test case](https://wikipedia.org/wiki/Test_case). 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `org.example.TestCase1.test1`
                ///     - `example/tests/TestCase1.test1`
                ///     - `ExampleTestCase1_test1`
                public var name: Self.Key<String> { .init(name: OTelAttributes.test.case.name) }
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
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `test.case.result.status`: The status of the actual test case result from test execution. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: enum
                    ///     - `pass`: pass
                    ///     - `fail`: fail
                    /// 
                    /// - Examples:
                    ///     - `pass`
                    ///     - `fail`
                    public var status: Self.Key<StatusEnum> { .init(name: OTelAttributes.test.case.result.status) }
                    
                    public struct StatusEnum: SpanAttributeConvertible {
                        private let rawValue: String
                        /// `pass`: pass
                        public static let pass = Self.init(rawValue: "pass")
                        /// `fail`: fail
                        public static let fail = Self.init(rawValue: "fail")
                        public func toSpanAttribute() -> Tracing.SpanAttribute {
                            return .string(self.rawValue)
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
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `test.suite.name`: The human readable name of a [test suite](https://wikipedia.org/wiki/Test_suite). 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `TestSuite1`
                public var name: Self.Key<String> { .init(name: OTelAttributes.test.suite.name) }
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
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `test.suite.run.status`: The status of the test suite run. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: enum
                    ///     - `success`: success
                    ///     - `failure`: failure
                    ///     - `skipped`: skipped
                    ///     - `aborted`: aborted
                    ///     - `timed_out`: timed_out
                    ///     - `in_progress`: in_progress
                    /// 
                    /// - Examples:
                    ///     - `success`
                    ///     - `failure`
                    ///     - `skipped`
                    ///     - `aborted`
                    ///     - `timed_out`
                    ///     - `in_progress`
                    public var status: Self.Key<StatusEnum> { .init(name: OTelAttributes.test.suite.run.status) }
                    
                    public struct StatusEnum: SpanAttributeConvertible {
                        private let rawValue: String
                        /// `success`: success
                        public static let success = Self.init(rawValue: "success")
                        /// `failure`: failure
                        public static let failure = Self.init(rawValue: "failure")
                        /// `skipped`: skipped
                        public static let skipped = Self.init(rawValue: "skipped")
                        /// `aborted`: aborted
                        public static let aborted = Self.init(rawValue: "aborted")
                        /// `timed_out`: timed_out
                        public static let timed_out = Self.init(rawValue: "timed_out")
                        /// `in_progress`: in_progress
                        public static let in_progress = Self.init(rawValue: "in_progress")
                        public func toSpanAttribute() -> Tracing.SpanAttribute {
                            return .string(self.rawValue)
                        }
                    }
                }
            
            
            }
        }
    }
}