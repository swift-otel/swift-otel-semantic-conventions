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
    /// `session` namespace
    public var session: SessionAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct SessionAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `session.id`: A unique id to identify a session.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `00112233-4455-6677-8899-aabbccddeeff`
            public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.session.id) }

            /// `session.previous_id`: The previous `session.id` for this user, when known.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `00112233-4455-6677-8899-aabbccddeeff`
            public var previousId: SpanAttributeKey<String> { .init(name: OTelAttribute.session.previousId) }
        }
    }
    #endif
}

#endif
