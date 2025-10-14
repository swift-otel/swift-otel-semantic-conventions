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
    /// `message` namespace
    public var message: MessageAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct MessageAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `message.compressed_size` **UNSTABLE**: Deprecated, use `rpc.message.compressed_size` instead.
            ///
            /// - Stability: development
            /// - Type: int
            @available(*, deprecated, renamed: "SpanAttributes.rpc.message.compressedSize")
            public var compressedSize: SpanAttributeKey<Int> { .init(name: OTelAttribute.message.compressedSize) }

            /// `message.id` **UNSTABLE**: Deprecated, use `rpc.message.id` instead.
            ///
            /// - Stability: development
            /// - Type: int
            @available(*, deprecated, renamed: "SpanAttributes.rpc.message.id")
            public var id: SpanAttributeKey<Int> { .init(name: OTelAttribute.message.id) }

            /// `message.type` **UNSTABLE**: Deprecated, use `rpc.message.type` instead.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `SENT`
            ///     - `RECEIVED`
            @available(*, deprecated, renamed: "SpanAttributes.rpc.message.type")
            public var `type`: SpanAttributeKey<TypeEnum> { .init(name: OTelAttribute.message.`type`) }

            public struct TypeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                public let rawValue: String
                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    .string(self.rawValue)
                }
            }

            /// `message.uncompressed_size` **UNSTABLE**: Deprecated, use `rpc.message.uncompressed_size` instead.
            ///
            /// - Stability: development
            /// - Type: int
            @available(*, deprecated, renamed: "SpanAttributes.rpc.message.uncompressedSize")
            public var uncompressedSize: SpanAttributeKey<Int> { .init(name: OTelAttribute.message.uncompressedSize) }
        }
    }
    #endif
}

#endif
