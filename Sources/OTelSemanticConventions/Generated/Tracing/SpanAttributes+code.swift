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
    /// `code` namespace
    public var code: CodeAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct CodeAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes

        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `code.stacktrace`: A stacktrace as a string in the natural representation for the language runtime. The representation is identical to [`exception.stacktrace`](/docs/exceptions/exceptions-spans.md#stacktrace-representation). This attribute MUST NOT be used on the Profile signal since the data is already captured in 'message Location'. This constraint is imposed to prevent redundancy and maintain data integrity.
            ///
            /// - Stability: stable
            /// - Type: string
            /// - Example: `at com.example.GenerateTrace.methodB(GenerateTrace.java:13)\n at com.example.GenerateTrace.methodA(GenerateTrace.java:9)\n at com.example.GenerateTrace.main(GenerateTrace.java:5)
            /// `
            public var stacktrace: Self.Key<String> { .init(name: OTelAttribute.code.stacktrace) }
        }

        /// `code.column` namespace
        public var column: ColumnAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ColumnAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `code.column.number`: The column number in `code.file.path` best representing the operation. It SHOULD point within the code unit named in `code.function.name`. This attribute MUST NOT be used on the Profile signal since the data is already captured in 'message Line'. This constraint is imposed to prevent redundancy and maintain data integrity.
                ///
                /// - Stability: stable
                /// - Type: int
                /// - Example: `16`
                public var number: Self.Key<Int> { .init(name: OTelAttribute.code.column.number) }
            }
        }

        /// `code.file` namespace
        public var file: FileAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct FileAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `code.file.path`: The source code file name that identifies the code unit as uniquely as possible (preferably an absolute file path). This attribute MUST NOT be used on the Profile signal since the data is already captured in 'message Function'. This constraint is imposed to prevent redundancy and maintain data integrity.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Example: `/usr/local/MyApplication/content_root/app/index.php`
                public var path: Self.Key<String> { .init(name: OTelAttribute.code.file.path) }
            }
        }

        /// `code.function` namespace
        public var function: FunctionAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct FunctionAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `code.function.name`: The method or function fully-qualified name without arguments. The value should fit the natural representation of the language runtime, which is also likely the same used within `code.stacktrace` attribute value. This attribute MUST NOT be used on the Profile signal since the data is already captured in 'message Function'. This constraint is imposed to prevent redundancy and maintain data integrity.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Examples:
                ///     - `com.example.MyHttpService.serveRequest`
                ///     - `GuzzleHttp\Client::transfer`
                ///     - `fopen`
                ///
                /// Values and format depends on each language runtime, thus it is impossible to provide an exhaustive list of examples.
                /// The values are usually the same (or prefixes of) the ones found in native stack trace representation stored in
                /// `code.stacktrace` without information on arguments.
                ///
                /// Examples:
                ///
                /// * Java method: `com.example.MyHttpService.serveRequest`
                /// * Java anonymous class method: `com.mycompany.Main$1.myMethod`
                /// * Java lambda method: `com.mycompany.Main$$Lambda/0x0000748ae4149c00.myMethod`
                /// * PHP function: `GuzzleHttp\Client::transfer`
                /// * Go function: `github.com/my/repo/pkg.foo.func5`
                /// * Elixir: `OpenTelemetry.Ctx.new`
                /// * Erlang: `opentelemetry_ctx:new`
                /// * Rust: `playground::my_module::my_cool_func`
                /// * C function: `fopen`
                public var name: Self.Key<String> { .init(name: OTelAttribute.code.function.name) }
            }
        }

        /// `code.line` namespace
        public var line: LineAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct LineAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `code.line.number`: The line number in `code.file.path` best representing the operation. It SHOULD point within the code unit named in `code.function.name`. This attribute MUST NOT be used on the Profile signal since the data is already captured in 'message Line'. This constraint is imposed to prevent redundancy and maintain data integrity.
                ///
                /// - Stability: stable
                /// - Type: int
                /// - Example: `42`
                public var number: Self.Key<Int> { .init(name: OTelAttribute.code.line.number) }
            }
        }
    }
}

#endif
