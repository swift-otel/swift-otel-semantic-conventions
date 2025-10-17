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
    /// `cloudevents` namespace
    public var cloudevents: CloudeventsAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct CloudeventsAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `cloudevents.event_id` **UNSTABLE**: The [event_id](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#id) uniquely identifies the event.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `123e4567-e89b-12d3-a456-426614174000`
            ///     - `0001`
            public var eventId: SpanAttributeKey<String> { .init(name: OTelAttribute.cloudevents.eventId) }

            /// `cloudevents.event_source` **UNSTABLE**: The [source](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#source-1) identifies the context in which an event happened.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `https://github.com/cloudevents`
            ///     - `/cloudevents/spec/pull/123`
            ///     - `my-service`
            public var eventSource: SpanAttributeKey<String> { .init(name: OTelAttribute.cloudevents.eventSource) }

            /// `cloudevents.event_spec_version` **UNSTABLE**: The [version of the CloudEvents specification](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#specversion) which the event uses.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `1.0`
            public var eventSpecVersion: SpanAttributeKey<String> {
                .init(name: OTelAttribute.cloudevents.eventSpecVersion)
            }

            /// `cloudevents.event_subject` **UNSTABLE**: The [subject](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#subject) of the event in the context of the event producer (identified by source).
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `mynewfile.jpg`
            public var eventSubject: SpanAttributeKey<String> { .init(name: OTelAttribute.cloudevents.eventSubject) }

            /// `cloudevents.event_type` **UNSTABLE**: The [event_type](https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/spec.md#type) contains a value describing the type of event related to the originating occurrence.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `com.github.pull_request.opened`
            ///     - `com.example.object.deleted.v2`
            public var eventType: SpanAttributeKey<String> { .init(name: OTelAttribute.cloudevents.eventType) }
        }
    }
    #endif
}

#endif
