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
    /// `event` namespace
    public var event: EventAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct EventAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `event.name` **UNSTABLE**: Identifies the class / type of event.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `browser.mouse.click`
            ///     - `device.app.lifecycle`
            @available(
                *,
                deprecated,
                message:
                    "The value of this attribute MUST now be set as the value of the EventName field on the LogRecord to indicate that the LogRecord represents an Event."
            )
            public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.event.name) }
        }
    }
    #endif
}

#endif
