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
    /// `messaging` namespace
    public var messaging: MessagingAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct MessagingAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `messaging.client_id`: Deprecated, use `messaging.client.id` instead.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `client-5`
            ///     - `myhost@8742@s8083jm`
            @available(*, deprecated, renamed: "SpanAttributes.messaging.client.id")
            public var clientId: SpanAttributeKey<String> { .init(name: OTelAttribute.messaging.clientId) }

            /// `messaging.operation`: Deprecated, use `messaging.operation.type` instead.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `publish`
            ///     - `create`
            ///     - `process`
            @available(*, deprecated, renamed: "SpanAttributes.messaging.operation.type")
            public var _operation: SpanAttributeKey<String> { .init(name: OTelAttribute.messaging._operation) }

            /// `messaging.system`: The messaging system as identified by the client instrumentation.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `activemq`: Apache ActiveMQ
            ///     - `aws.sns`: Amazon Simple Notification Service (SNS)
            ///     - `aws_sqs`: Amazon Simple Queue Service (SQS)
            ///     - `eventgrid`: Azure Event Grid
            ///     - `eventhubs`: Azure Event Hubs
            ///     - `servicebus`: Azure Service Bus
            ///     - `gcp_pubsub`: Google Cloud Pub/Sub
            ///     - `jms`: Java Message Service
            ///     - `kafka`: Apache Kafka
            ///     - `rabbitmq`: RabbitMQ
            ///     - `rocketmq`: Apache RocketMQ
            ///     - `pulsar`: Apache Pulsar
            ///
            /// The actual messaging system may differ from the one known by the client. For example, when using Kafka client libraries to communicate with Azure Event Hubs, the `messaging.system` is set to `kafka` based on the instrumentation's best knowledge.
            public var system: SpanAttributeKey<SystemEnum> { .init(name: OTelAttribute.messaging.system) }

            public struct SystemEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                public let rawValue: String
                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    .string(self.rawValue)
                }
            }
        }

        /// `messaging.batch` namespace
        public var batch: BatchAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct BatchAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `messaging.batch.message_count`: The number of messages sent, received, or processed in the scope of the batching operation.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Examples:
                ///     - `0`
                ///     - `1`
                ///     - `2`
                ///
                /// Instrumentations SHOULD NOT set `messaging.batch.message_count` on spans that operate with a single message. When a messaging client library supports both batch and single-message API for the same operation, instrumentations SHOULD use `messaging.batch.message_count` for batching APIs and SHOULD NOT use it for single-message APIs.
                public var messageCount: SpanAttributeKey<Int> {
                    .init(name: OTelAttribute.messaging.batch.messageCount)
                }
            }
        }

        /// `messaging.client` namespace
        public var client: ClientAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ClientAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `messaging.client.id`: A unique identifier for the client that consumes or produces a message.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `client-5`
                ///     - `myhost@8742@s8083jm`
                public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.messaging.client.id) }
            }
        }

        /// `messaging.consumer` namespace
        public var consumer: ConsumerAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ConsumerAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
            }

            /// `messaging.consumer.group` namespace
            public var group: GroupAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct GroupAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `messaging.consumer.group.name`: The name of the consumer group with which a consumer is associated.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Examples:
                    ///     - `my-group`
                    ///     - `indexer`
                    ///
                    /// Semantic conventions for individual messaging systems SHOULD document whether `messaging.consumer.group.name` is applicable and what it means in the context of that system.
                    public var name: SpanAttributeKey<String> {
                        .init(name: OTelAttribute.messaging.consumer.group.name)
                    }
                }
            }
        }

        /// `messaging.destination` namespace
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

                /// `messaging.destination.anonymous`: A boolean that is true if the message destination is anonymous (could be unnamed or have auto-generated name).
                ///
                /// - Stability: development
                /// - Type: boolean
                public var anonymous: SpanAttributeKey<Bool> {
                    .init(name: OTelAttribute.messaging.destination.anonymous)
                }

                /// `messaging.destination.name`: The message destination name
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `MyQueue`
                ///     - `MyTopic`
                ///
                /// Destination name SHOULD uniquely identify a specific queue, topic or other entity within the broker. If
                /// the broker doesn't have such notion, the destination name SHOULD uniquely identify the broker.
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.messaging.destination.name) }

                /// `messaging.destination.template`: Low cardinality representation of the messaging destination name
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `/customers/{customerId}`
                ///
                /// Destination names could be constructed from templates. An example would be a destination name involving a user name or product id. Although the destination name in this case is of high cardinality, the underlying template is of low cardinality and can be effectively used for grouping and aggregation.
                public var template: SpanAttributeKey<String> {
                    .init(name: OTelAttribute.messaging.destination.template)
                }

                /// `messaging.destination.temporary`: A boolean that is true if the message destination is temporary and might not exist anymore after messages are processed.
                ///
                /// - Stability: development
                /// - Type: boolean
                public var temporary: SpanAttributeKey<Bool> {
                    .init(name: OTelAttribute.messaging.destination.temporary)
                }
            }

            /// `messaging.destination.partition` namespace
            public var partition: PartitionAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct PartitionAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `messaging.destination.partition.id`: The identifier of the partition messages are sent to or received from, unique within the `messaging.destination.name`.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `1`
                    public var id: SpanAttributeKey<String> {
                        .init(name: OTelAttribute.messaging.destination.partition.id)
                    }
                }
            }

            /// `messaging.destination.subscription` namespace
            public var subscription: SubscriptionAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct SubscriptionAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `messaging.destination.subscription.name`: The name of the destination subscription from which a message is consumed.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `subscription-a`
                    ///
                    /// Semantic conventions for individual messaging systems SHOULD document whether `messaging.destination.subscription.name` is applicable and what it means in the context of that system.
                    public var name: SpanAttributeKey<String> {
                        .init(name: OTelAttribute.messaging.destination.subscription.name)
                    }
                }
            }
        }

        /// `messaging.destination_publish` namespace
        public var destinationPublish: DestinationPublishAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct DestinationPublishAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `messaging.destination_publish.anonymous`: Deprecated, no replacement at this time.
                ///
                /// - Stability: development
                /// - Type: boolean
                @available(*, deprecated, message: "Obsoleted: Removed. No replacement at this time.")
                public var anonymous: SpanAttributeKey<Bool> {
                    .init(name: OTelAttribute.messaging.destinationPublish.anonymous)
                }

                /// `messaging.destination_publish.name`: Deprecated, no replacement at this time.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `MyQueue`
                ///     - `MyTopic`
                @available(*, deprecated, message: "Obsoleted: Removed. No replacement at this time.")
                public var name: SpanAttributeKey<String> {
                    .init(name: OTelAttribute.messaging.destinationPublish.name)
                }
            }
        }

        /// `messaging.eventhubs` namespace
        public var eventhubs: EventhubsAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct EventhubsAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
            }

            /// `messaging.eventhubs.consumer` namespace
            public var consumer: ConsumerAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct ConsumerAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `messaging.eventhubs.consumer.group`: Deprecated, use `messaging.consumer.group.name` instead.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `$Default`
                    @available(*, deprecated, renamed: "SpanAttributes.messaging.consumer.group.name")
                    public var group: SpanAttributeKey<String> {
                        .init(name: OTelAttribute.messaging.eventhubs.consumer.group)
                    }
                }
            }

            /// `messaging.eventhubs.message` namespace
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

                    /// `messaging.eventhubs.message.enqueued_time`: The UTC epoch seconds at which the message has been accepted and stored in the entity.
                    ///
                    /// - Stability: development
                    /// - Type: int
                    /// - Example: `1701393730`
                    public var enqueuedTime: SpanAttributeKey<Int> {
                        .init(name: OTelAttribute.messaging.eventhubs.message.enqueuedTime)
                    }
                }
            }
        }

        /// `messaging.gcp_pubsub` namespace
        public var gcpPubsub: GcpPubsubAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct GcpPubsubAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
            }

            /// `messaging.gcp_pubsub.message` namespace
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

                    /// `messaging.gcp_pubsub.message.ack_deadline`: The ack deadline in seconds set for the modify ack deadline request.
                    ///
                    /// - Stability: development
                    /// - Type: int
                    /// - Example: `10`
                    public var ackDeadline: SpanAttributeKey<Int> {
                        .init(name: OTelAttribute.messaging.gcpPubsub.message.ackDeadline)
                    }

                    /// `messaging.gcp_pubsub.message.ack_id`: The ack id for a given message.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `ack_id`
                    public var ackId: SpanAttributeKey<String> {
                        .init(name: OTelAttribute.messaging.gcpPubsub.message.ackId)
                    }

                    /// `messaging.gcp_pubsub.message.delivery_attempt`: The delivery attempt for a given message.
                    ///
                    /// - Stability: development
                    /// - Type: int
                    /// - Example: `2`
                    public var deliveryAttempt: SpanAttributeKey<Int> {
                        .init(name: OTelAttribute.messaging.gcpPubsub.message.deliveryAttempt)
                    }

                    /// `messaging.gcp_pubsub.message.ordering_key`: The ordering key for a given message. If the attribute is not present, the message does not have an ordering key.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `ordering_key`
                    public var orderingKey: SpanAttributeKey<String> {
                        .init(name: OTelAttribute.messaging.gcpPubsub.message.orderingKey)
                    }
                }
            }
        }

        /// `messaging.kafka` namespace
        public var kafka: KafkaAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
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

                /// `messaging.kafka.offset`: The offset of a record in the corresponding Kafka partition.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `42`
                public var offset: SpanAttributeKey<Int> { .init(name: OTelAttribute.messaging.kafka.offset) }
            }

            /// `messaging.kafka.consumer` namespace
            public var consumer: ConsumerAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct ConsumerAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `messaging.kafka.consumer.group`: Deprecated, use `messaging.consumer.group.name` instead.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `my-group`
                    @available(*, deprecated, renamed: "SpanAttributes.messaging.consumer.group.name")
                    public var group: SpanAttributeKey<String> {
                        .init(name: OTelAttribute.messaging.kafka.consumer.group)
                    }
                }
            }

            /// `messaging.kafka.destination` namespace
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

                    /// `messaging.kafka.destination.partition`: Deprecated, use `messaging.destination.partition.id` instead.
                    ///
                    /// - Stability: development
                    /// - Type: int
                    /// - Example: `2`
                    @available(*, deprecated, renamed: "SpanAttributes.messaging.destination.partition.id")
                    public var partition: SpanAttributeKey<Int> {
                        .init(name: OTelAttribute.messaging.kafka.destination.partition)
                    }
                }
            }

            /// `messaging.kafka.message` namespace
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

                    /// `messaging.kafka.message.key`: Message keys in Kafka are used for grouping alike messages to ensure they're processed on the same partition. They differ from `messaging.message.id` in that they're not unique. If the key is `null`, the attribute MUST NOT be set.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `myKey`
                    ///
                    /// If the key type is not string, it's string representation has to be supplied for the attribute. If the key has no unambiguous, canonical string form, don't include its value.
                    public var key: SpanAttributeKey<String> { .init(name: OTelAttribute.messaging.kafka.message.key) }

                    /// `messaging.kafka.message.offset`: Deprecated, use `messaging.kafka.offset` instead.
                    ///
                    /// - Stability: development
                    /// - Type: int
                    /// - Example: `42`
                    @available(*, deprecated, renamed: "SpanAttributes.messaging.kafka.offset")
                    public var offset: SpanAttributeKey<Int> {
                        .init(name: OTelAttribute.messaging.kafka.message.offset)
                    }

                    /// `messaging.kafka.message.tombstone`: A boolean that is true if the message is a tombstone.
                    ///
                    /// - Stability: development
                    /// - Type: boolean
                    public var tombstone: SpanAttributeKey<Bool> {
                        .init(name: OTelAttribute.messaging.kafka.message.tombstone)
                    }
                }
            }
        }

        /// `messaging.message` namespace
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

                /// `messaging.message.conversation_id`: The conversation ID identifying the conversation to which the message belongs, represented as a string. Sometimes called "Correlation ID".
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `MyConversationId`
                public var conversationId: SpanAttributeKey<String> {
                    .init(name: OTelAttribute.messaging.message.conversationId)
                }

                /// `messaging.message.id`: A value used by the messaging system as an identifier for the message, represented as a string.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `452a7c7c7c7048c2f887f61572b18fc2`
                public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.messaging.message.id) }
            }

            /// `messaging.message.body` namespace
            public var body: BodyAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct BodyAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `messaging.message.body.size`: The size of the message body in bytes.
                    ///
                    /// - Stability: development
                    /// - Type: int
                    /// - Example: `1439`
                    ///
                    /// This can refer to both the compressed or uncompressed body size. If both sizes are known, the uncompressed
                    /// body size should be used.
                    public var size: SpanAttributeKey<Int> { .init(name: OTelAttribute.messaging.message.body.size) }
                }
            }

            /// `messaging.message.envelope` namespace
            public var envelope: EnvelopeAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct EnvelopeAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `messaging.message.envelope.size`: The size of the message body and metadata in bytes.
                    ///
                    /// - Stability: development
                    /// - Type: int
                    /// - Example: `2738`
                    ///
                    /// This can refer to both the compressed or uncompressed size. If both sizes are known, the uncompressed
                    /// size should be used.
                    public var size: SpanAttributeKey<Int> {
                        .init(name: OTelAttribute.messaging.message.envelope.size)
                    }
                }
            }
        }

        /// `messaging.operation` namespace
        public var operation: OperationAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct OperationAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `messaging.operation.name`: The system-specific name of the messaging operation.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `ack`
                ///     - `nack`
                ///     - `send`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.messaging.operation.name) }

                /// `messaging.operation.type`: A string identifying the type of the messaging operation.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `create`: A message is created. "Create" spans always refer to a single message and are used to provide a unique creation context for messages in batch sending scenarios.
                ///     - `send`: One or more messages are provided for sending to an intermediary. If a single message is sent, the context of the "Send" span can be used as the creation context and no "Create" span needs to be created.
                ///     - `receive`: One or more messages are requested by a consumer. This operation refers to pull-based scenarios, where consumers explicitly call methods of messaging SDKs to receive messages.
                ///     - `process`: One or more messages are processed by a consumer.
                ///     - `settle`: One or more messages are settled.
                ///     - `deliver`: Deprecated. Use `process` instead.
                ///     - `publish`: Deprecated. Use `send` instead.
                ///
                /// If a custom value is used, it MUST be of low cardinality.
                public var `type`: SpanAttributeKey<TypeEnum> { .init(name: OTelAttribute.messaging.operation.`type`) }

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

        /// `messaging.rabbitmq` namespace
        public var rabbitmq: RabbitmqAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
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

            /// `messaging.rabbitmq.destination` namespace
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

                    /// `messaging.rabbitmq.destination.routing_key`: RabbitMQ message routing key.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `myKey`
                    public var routingKey: SpanAttributeKey<String> {
                        .init(name: OTelAttribute.messaging.rabbitmq.destination.routingKey)
                    }
                }
            }

            /// `messaging.rabbitmq.message` namespace
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

                    /// `messaging.rabbitmq.message.delivery_tag`: RabbitMQ message delivery tag
                    ///
                    /// - Stability: development
                    /// - Type: int
                    /// - Example: `123`
                    public var deliveryTag: SpanAttributeKey<Int> {
                        .init(name: OTelAttribute.messaging.rabbitmq.message.deliveryTag)
                    }
                }
            }
        }

        /// `messaging.rocketmq` namespace
        public var rocketmq: RocketmqAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
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

                /// `messaging.rocketmq.client_group`: Deprecated, use `messaging.consumer.group.name` instead.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `myConsumerGroup`
                @available(
                    *,
                    deprecated,
                    message:
                        "Replaced by `messaging.consumer.group.name` on the consumer spans. No replacement for producer spans."
                )
                public var clientGroup: SpanAttributeKey<String> {
                    .init(name: OTelAttribute.messaging.rocketmq.clientGroup)
                }

                /// `messaging.rocketmq.consumption_model`: Model of message consumption. This only applies to consumer spans.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `clustering`: Clustering consumption model
                ///     - `broadcasting`: Broadcasting consumption model
                public var consumptionModel: SpanAttributeKey<ConsumptionModelEnum> {
                    .init(name: OTelAttribute.messaging.rocketmq.consumptionModel)
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

                /// `messaging.rocketmq.namespace`: Namespace of RocketMQ resources, resources in different namespaces are individual.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `myNamespace`
                public var namespace: SpanAttributeKey<String> {
                    .init(name: OTelAttribute.messaging.rocketmq.namespace)
                }
            }

            /// `messaging.rocketmq.message` namespace
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

                    /// `messaging.rocketmq.message.delay_time_level`: The delay time level for delay message, which determines the message delay time.
                    ///
                    /// - Stability: development
                    /// - Type: int
                    /// - Example: `3`
                    public var delayTimeLevel: SpanAttributeKey<Int> {
                        .init(name: OTelAttribute.messaging.rocketmq.message.delayTimeLevel)
                    }

                    /// `messaging.rocketmq.message.delivery_timestamp`: The timestamp in milliseconds that the delay message is expected to be delivered to consumer.
                    ///
                    /// - Stability: development
                    /// - Type: int
                    /// - Example: `1665987217045`
                    public var deliveryTimestamp: SpanAttributeKey<Int> {
                        .init(name: OTelAttribute.messaging.rocketmq.message.deliveryTimestamp)
                    }

                    /// `messaging.rocketmq.message.group`: It is essential for FIFO message. Messages that belong to the same message group are always processed one by one within the same consumer group.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `myMessageGroup`
                    public var group: SpanAttributeKey<String> {
                        .init(name: OTelAttribute.messaging.rocketmq.message.group)
                    }

                    /// `messaging.rocketmq.message.keys`: Key(s) of message, another way to mark message besides message id.
                    ///
                    /// - Stability: development
                    /// - Type: stringArray
                    public var keys: SpanAttributeKey<[String]> {
                        .init(name: OTelAttribute.messaging.rocketmq.message.keys)
                    }

                    /// `messaging.rocketmq.message.tag`: The secondary classifier of message besides topic.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `tagA`
                    public var tag: SpanAttributeKey<String> {
                        .init(name: OTelAttribute.messaging.rocketmq.message.tag)
                    }

                    /// `messaging.rocketmq.message.type`: Type of message.
                    ///
                    /// - Stability: development
                    /// - Type: enum
                    ///     - `normal`: Normal message
                    ///     - `fifo`: FIFO message
                    ///     - `delay`: Delay message
                    ///     - `transaction`: Transaction message
                    public var `type`: SpanAttributeKey<TypeEnum> {
                        .init(name: OTelAttribute.messaging.rocketmq.message.`type`)
                    }

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

        /// `messaging.servicebus` namespace
        public var servicebus: ServicebusAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ServicebusAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `messaging.servicebus.disposition_status`: Describes the [settlement type](https://learn.microsoft.com/azure/service-bus-messaging/message-transfers-locks-settlement#peeklock).
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `complete`: Message is completed
                ///     - `abandon`: Message is abandoned
                ///     - `dead_letter`: Message is sent to dead letter queue
                ///     - `defer`: Message is deferred
                public var dispositionStatus: SpanAttributeKey<DispositionStatusEnum> {
                    .init(name: OTelAttribute.messaging.servicebus.dispositionStatus)
                }

                public struct DispositionStatusEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                    public let rawValue: String
                    public init(rawValue: String) {
                        self.rawValue = rawValue
                    }
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
                    }
                }
            }

            /// `messaging.servicebus.destination` namespace
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

                    /// `messaging.servicebus.destination.subscription_name`: Deprecated, use `messaging.destination.subscription.name` instead.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `subscription-a`
                    @available(*, deprecated, renamed: "SpanAttributes.messaging.destination.subscription.name")
                    public var subscriptionName: SpanAttributeKey<String> {
                        .init(name: OTelAttribute.messaging.servicebus.destination.subscriptionName)
                    }
                }
            }

            /// `messaging.servicebus.message` namespace
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

                    /// `messaging.servicebus.message.delivery_count`: Number of deliveries that have been attempted for this message.
                    ///
                    /// - Stability: development
                    /// - Type: int
                    /// - Example: `2`
                    public var deliveryCount: SpanAttributeKey<Int> {
                        .init(name: OTelAttribute.messaging.servicebus.message.deliveryCount)
                    }

                    /// `messaging.servicebus.message.enqueued_time`: The UTC epoch seconds at which the message has been accepted and stored in the entity.
                    ///
                    /// - Stability: development
                    /// - Type: int
                    /// - Example: `1701393730`
                    public var enqueuedTime: SpanAttributeKey<Int> {
                        .init(name: OTelAttribute.messaging.servicebus.message.enqueuedTime)
                    }
                }
            }
        }
    }
    #endif
}

#endif
