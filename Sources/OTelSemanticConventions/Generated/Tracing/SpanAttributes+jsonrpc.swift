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
    /// `jsonrpc` namespace
    public var jsonrpc: JsonrpcAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct JsonrpcAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
        }

        /// `jsonrpc.protocol` namespace
        public var `protocol`: ProtocolAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ProtocolAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `jsonrpc.protocol.version` **UNSTABLE**: Protocol version, as specified in the `jsonrpc` property of the request and its corresponding response.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `2.0`
                ///     - `1.0`
                public var version: SpanAttributeKey<String> { .init(name: OTelAttribute.jsonrpc.`protocol`.version) }
            }
        }

        /// `jsonrpc.request` namespace
        public var request: RequestAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct RequestAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `jsonrpc.request.id` **UNSTABLE**: A string representation of the `id` property of the request and its corresponding response.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `10`
                ///     - `request-7`
                ///
                /// Under the [JSON-RPC specification](https://www.jsonrpc.org/specification), the `id` property may be a string, number, null, or omitted entirely. When omitted, the request is treated as a notification. Using `null` is not equivalent to omitting the `id`, but it is discouraged.
                /// Instrumentations SHOULD NOT capture this attribute when the `id` is `null` or omitted.
                public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.jsonrpc.request.id) }
            }
        }
    }
    #endif
}

#endif
