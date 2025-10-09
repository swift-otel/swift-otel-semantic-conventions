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
    /// `thread` namespace
    public var thread: ThreadAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct ThreadAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `thread.id`: Current "managed" thread ID (as opposed to OS thread ID).
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `42`
            public var id: SpanAttributeKey<Int> { .init(name: OTelAttribute.thread.id) }

            /// `thread.name`: Current thread name.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `main`
            public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.thread.name) }
        }
    }
    #endif
}

#endif
