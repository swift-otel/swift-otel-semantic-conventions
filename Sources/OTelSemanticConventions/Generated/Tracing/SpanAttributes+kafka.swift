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
    /// `kafka` namespace
    public var kafka: KafkaAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct KafkaAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `kafka.offset` **UNSTABLE**: The offset of a record in the corresponding Kafka partition.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `42`
            public var offset: SpanAttributeKey<Int> { .init(name: OTelAttribute.kafka.offset) }
        }

        /// `kafka.cluster` namespace
        public var cluster: ClusterAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ClusterAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `kafka.cluster.id` **UNSTABLE**: The Kafka cluster ID, obtained from the broker metadata exposed through the Kafka client (or AdminClient) API.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `MkU3OEVBNTcwNTJENDM2Qk`
                ///
                /// The cluster ID is a unique identifier reported by the Kafka broker. It identifies the cluster independently of the individual brokers the client is configured to connect to, and remains stable even if broker hostnames, IP addresses, or ports change.
                public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.kafka.cluster.id) }
            }
        }

        /// `kafka.message` namespace
        public var message: MessageAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
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

                /// `kafka.message.key` **UNSTABLE**: Message keys in Kafka are used for grouping alike messages to ensure they're processed on the same partition. They differ from `messaging.message.id` in that they're not unique. If the key is `null`, the attribute MUST NOT be set.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `myKey`
                ///
                /// If the key type is not string, its string representation has to be supplied for the attribute. If the key has no unambiguous, canonical string form, don't include its value.
                public var key: SpanAttributeKey<String> { .init(name: OTelAttribute.kafka.message.key) }

                /// `kafka.message.tombstone` **UNSTABLE**: A boolean that is true if the message is a tombstone.
                ///
                /// - Stability: development
                /// - Type: boolean
                public var tombstone: SpanAttributeKey<Bool> { .init(name: OTelAttribute.kafka.message.tombstone) }
            }
        }
    }
    #endif
}

#endif
