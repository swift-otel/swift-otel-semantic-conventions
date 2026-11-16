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
    /// `rocketmq` namespace
    public var rocketmq: RocketmqAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct RocketmqAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `rocketmq.consumption_model` **UNSTABLE**: Model of message consumption. This only applies to consumer spans.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `clustering`: Clustering consumption model
            ///     - `broadcasting`: Broadcasting consumption model
            public var consumptionModel: SpanAttributeKey<ConsumptionModelEnum> {
                .init(name: OTelAttribute.rocketmq.consumptionModel)
            }

            public struct ConsumptionModelEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                public let rawValue: String
                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    .string(self.rawValue)
                }
            }

            /// `rocketmq.namespace` **UNSTABLE**: Namespace of RocketMQ resources, resources in different namespaces are individual.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `myNamespace`
            public var namespace: SpanAttributeKey<String> { .init(name: OTelAttribute.rocketmq.namespace) }
        }

        /// `rocketmq.message` namespace
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

                /// `rocketmq.message.delay_time_level` **UNSTABLE**: The delay time level for delay message, which determines the message delay time.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `3`
                public var delayTimeLevel: SpanAttributeKey<Int> {
                    .init(name: OTelAttribute.rocketmq.message.delayTimeLevel)
                }

                /// `rocketmq.message.delivery_timestamp` **UNSTABLE**: The timestamp in milliseconds that the delay message is expected to be delivered to consumer.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `1665987217045`
                public var deliveryTimestamp: SpanAttributeKey<Int> {
                    .init(name: OTelAttribute.rocketmq.message.deliveryTimestamp)
                }

                /// `rocketmq.message.group` **UNSTABLE**: It is essential for FIFO message. Messages that belong to the same message group are always processed one by one within the same consumer group.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `myMessageGroup`
                public var group: SpanAttributeKey<String> { .init(name: OTelAttribute.rocketmq.message.group) }

                /// `rocketmq.message.keys` **UNSTABLE**: Key(s) of message, another way to mark message besides message ID.
                ///
                /// - Stability: development
                /// - Type: stringArray
                public var keys: SpanAttributeKey<[String]> { .init(name: OTelAttribute.rocketmq.message.keys) }

                /// `rocketmq.message.tag` **UNSTABLE**: The secondary classifier of message besides topic.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `tagA`
                public var tag: SpanAttributeKey<String> { .init(name: OTelAttribute.rocketmq.message.tag) }

                /// `rocketmq.message.type` **UNSTABLE**: Type of message.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `normal`: Normal message
                ///     - `fifo`: FIFO message
                ///     - `delay`: Delay message
                ///     - `transaction`: Transaction message
                public var `type`: SpanAttributeKey<TypeEnum> { .init(name: OTelAttribute.rocketmq.message.`type`) }

                public struct TypeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
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
    }
    #endif
}

#endif
