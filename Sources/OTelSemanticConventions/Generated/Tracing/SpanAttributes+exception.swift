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
    /// `exception` namespace
    public var exception: ExceptionAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct ExceptionAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes

        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `exception.escaped`: Indicates that the exception is escaping the scope of the span.
            ///
            /// - Stability: stable
            ///
            /// - Type: boolean
            @available(
                *,
                deprecated,
                message:
                    "It's no longer recommended to record exceptions that are handled and do not escape the scope of a span."
            )
            public var escaped: Self.Key<Bool> { .init(name: OTelAttribute.exception.escaped) }

            /// `exception.message`: The exception message.
            ///
            /// - Stability: stable
            ///
            /// - Type: string
            ///
            /// - Examples:
            ///     - `Division by zero`
            ///     - `Can't convert 'int' object to str implicitly`
            public var message: Self.Key<String> { .init(name: OTelAttribute.exception.message) }

            /// `exception.stacktrace`: A stacktrace as a string in the natural representation for the language runtime. The representation is to be determined and documented by each language SIG.
            ///
            /// - Stability: stable
            ///
            /// - Type: string
            ///
            /// - Example: `Exception in thread "main" java.lang.RuntimeException: Test exception\n at com.example.GenerateTrace.methodB(GenerateTrace.java:13)\n at com.example.GenerateTrace.methodA(GenerateTrace.java:9)\n at com.example.GenerateTrace.main(GenerateTrace.java:5)
            /// `
            public var stacktrace: Self.Key<String> { .init(name: OTelAttribute.exception.stacktrace) }

            /// `exception.type`: The type of the exception (its fully-qualified class name, if applicable). The dynamic type of the exception should be preferred over the static type in languages that support it.
            ///
            /// - Stability: stable
            ///
            /// - Type: string
            ///
            /// - Examples:
            ///     - `java.net.ConnectException`
            ///     - `OSError`
            public var `type`: Self.Key<String> { .init(name: OTelAttribute.exception.`type`) }
        }
    }
}

#endif
