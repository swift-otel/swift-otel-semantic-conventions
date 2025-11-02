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
    /// `pool` namespace
    public var pool: PoolAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct PoolAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `pool.name` **UNSTABLE**: Deprecated, use `db.client.connection.pool.name` instead.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `myDataSource`
            @available(*, deprecated, renamed: "SpanAttributes.db.client.connection.pool.name")
            public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.pool.name) }
        }
    }
    #endif
}

#endif
