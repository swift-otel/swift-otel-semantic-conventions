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
    /// `rabbitmq` namespace
    public var rabbitmq: RabbitmqAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct RabbitmqAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
        }

        /// `rabbitmq.destination` namespace
        public var destination: DestinationAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct DestinationAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `rabbitmq.destination.routing_key` **UNSTABLE**: RabbitMQ message routing key.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `myKey`
                public var routingKey: SpanAttributeKey<String> {
                    .init(name: OTelAttribute.rabbitmq.destination.routingKey)
                }
            }
        }

        /// `rabbitmq.message` namespace
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

                /// `rabbitmq.message.delivery_tag` **UNSTABLE**: RabbitMQ message delivery tag
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `123`
                public var deliveryTag: SpanAttributeKey<Int> {
                    .init(name: OTelAttribute.rabbitmq.message.deliveryTag)
                }
            }
        }
    }
    #endif
}

#endif
