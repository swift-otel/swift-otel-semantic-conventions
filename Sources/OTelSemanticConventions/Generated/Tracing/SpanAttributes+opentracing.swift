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
    /// `opentracing` namespace
    public var opentracing: OpentracingAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct OpentracingAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `opentracing.ref_type`: Parent-child Reference type
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `child_of`: The parent Span depends on the child Span in some capacity
            ///     - `follows_from`: The parent Span doesn't depend in any way on the result of the child Span
            ///
            /// The causal relationship between a child Span and a parent Span.
            public var refType: SpanAttributeKey<RefTypeEnum> { .init(name: OTelAttribute.opentracing.refType) }

            public struct RefTypeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
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
    #endif
}

#endif
