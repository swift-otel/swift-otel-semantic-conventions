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

extension OTelAttribute {
    #if Experimental
    /// `messaging` namespace
    public enum messaging {
        /// `messaging.client_id` **UNSTABLE**: Deprecated, use `messaging.client.id` instead.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Examples:
        ///     - `client-5`
        ///     - `myhost@8742@s8083jm`
        @available(*, deprecated, renamed: "OTelAttribute.messaging.client.id")
        public static let clientId = "messaging.client_id"

        /// `messaging.operation` **UNSTABLE**: Deprecated, use `messaging.operation.type` instead.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Examples:
        ///     - `publish`
        ///     - `create`
        ///     - `process`
        @available(*, deprecated, renamed: "OTelAttribute.messaging.operation.type")
        public static let _operation = "messaging.operation"

        /// `messaging.system` **UNSTABLE**: Deprecated, use `messaging.system.name` instead.
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
        /// The actual messaging system may differ from the one known by the client.
        /// For example, when using Kafka client libraries to communicate with Azure Event Hubs, the `messaging.system`
        /// is set to `kafka` based on the instrumentation's best knowledge.
        ///
        /// When migrating to `messaging.system.name`, update the following values:
        ///
        /// - `aws_sqs` to `aws.sqs`
        /// - `eventgrid` to `azure.eventgrid`
        /// - `eventhubs` to `azure.eventhubs`
        /// - `servicebus` to `azure.servicebus`
        /// - `gcp_pubsub` to `gcp.pubsub`
        ///
        /// All other values are unchanged.
        @available(*, deprecated, renamed: "OTelAttribute.messaging.system.name")
        public static let _system = "messaging.system"

        /// `messaging.batch` namespace
        public enum batch {
            /// `messaging.batch.message_count` **UNSTABLE**: The number of messages sent, received, or processed in the scope of the batching operation.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Examples:
            ///     - `0`
            ///     - `1`
            ///     - `2`
            ///
            /// Instrumentations SHOULD NOT set `messaging.batch.message_count` on spans that operate with a single message. When a messaging client library supports both batch and single-message API for the same operation, instrumentations SHOULD use `messaging.batch.message_count` for batching APIs and SHOULD NOT use it for single-message APIs.
            public static let messageCount = "messaging.batch.message_count"
        }

        /// `messaging.client` namespace
        public enum client {
            /// `messaging.client.id` **UNSTABLE**: A unique identifier for the client that consumes or produces a message.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `client-5`
            ///     - `myhost@8742@s8083jm`
            public static let id = "messaging.client.id"
        }

        /// `messaging.consumer` namespace
        public enum consumer {
            /// `messaging.consumer.group` namespace
            public enum group {
                /// `messaging.consumer.group.name` **UNSTABLE**: The name of the consumer group with which a consumer is associated.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `my-group`
                ///     - `indexer`
                ///
                /// Semantic conventions for individual messaging systems SHOULD document whether `messaging.consumer.group.name` is applicable and what it means in the context of that system.
                public static let name = "messaging.consumer.group.name"
            }
        }

        /// `messaging.destination` namespace
        public enum destination {
            /// `messaging.destination.anonymous` **UNSTABLE**: A boolean that is true if the message destination is anonymous (could be unnamed or have auto-generated name).
            ///
            /// - Stability: development
            /// - Type: boolean
            public static let anonymous = "messaging.destination.anonymous"

            /// `messaging.destination.name` **UNSTABLE**: The message destination name
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `MyQueue`
            ///     - `MyTopic`
            ///
            /// SHOULD uniquely identify a specific queue, topic or other entity within the broker. If
            /// the broker doesn't have such notion, it SHOULD uniquely identify the broker.
            public static let name = "messaging.destination.name"

            /// `messaging.destination.template` **UNSTABLE**: Low cardinality representation of the messaging destination name
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `/customers/{customerId}`
            ///
            /// Destination names could be constructed from templates. An example would be a destination name involving a username or product ID. Although the destination name in this case is of high cardinality, the underlying template is of low cardinality and can be effectively used for grouping and aggregation.
            public static let template = "messaging.destination.template"

            /// `messaging.destination.temporary` **UNSTABLE**: A boolean that is true if the message destination is temporary and might not exist anymore after messages are processed.
            ///
            /// - Stability: development
            /// - Type: boolean
            public static let temporary = "messaging.destination.temporary"

            /// `messaging.destination.partition` namespace
            public enum partition {
                /// `messaging.destination.partition.id` **UNSTABLE**: The identifier of the partition messages are sent to or received from, unique within the `messaging.destination.name`.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `1`
                public static let id = "messaging.destination.partition.id"
            }

            /// `messaging.destination.subscription` namespace
            public enum subscription {
                /// `messaging.destination.subscription.name` **UNSTABLE**: The name of the destination subscription from which a message is consumed.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `subscription-a`
                ///
                /// Semantic conventions for individual messaging systems SHOULD document whether `messaging.destination.subscription.name` is applicable and what it means in the context of that system.
                public static let name = "messaging.destination.subscription.name"
            }
        }

        /// `messaging.destination_publish` namespace
        public enum destinationPublish {
            /// `messaging.destination_publish.anonymous` **UNSTABLE**: Deprecated, no replacement at this time.
            ///
            /// - Stability: development
            /// - Type: boolean
            @available(*, deprecated, message: "Obsoleted: Removed. No replacement at this time.")
            public static let anonymous = "messaging.destination_publish.anonymous"

            /// `messaging.destination_publish.name` **UNSTABLE**: Deprecated, no replacement at this time.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `MyQueue`
            ///     - `MyTopic`
            @available(*, deprecated, message: "Obsoleted: Removed. No replacement at this time.")
            public static let name = "messaging.destination_publish.name"
        }

        /// `messaging.eventhubs` namespace
        public enum eventhubs {
            /// `messaging.eventhubs.consumer` namespace
            public enum consumer {
                /// `messaging.eventhubs.consumer.group` **UNSTABLE**: Deprecated, use `messaging.consumer.group.name` instead.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `$Default`
                @available(*, deprecated, renamed: "OTelAttribute.messaging.consumer.group.name")
                public static let group = "messaging.eventhubs.consumer.group"
            }

            /// `messaging.eventhubs.message` namespace
            public enum message {
                /// `messaging.eventhubs.message.enqueued_time` **UNSTABLE**: Deprecated, use `azure.eventhubs.message.enqueued_time` instead.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `1701393730`
                @available(*, deprecated, renamed: "OTelAttribute.azure.eventhubs.message.enqueuedTime")
                public static let enqueuedTime = "messaging.eventhubs.message.enqueued_time"
            }
        }

        /// `messaging.gcp_pubsub` namespace
        public enum gcpPubsub {
            /// `messaging.gcp_pubsub.message` namespace
            public enum message {
                /// `messaging.gcp_pubsub.message.ack_deadline` **UNSTABLE**: Deprecated, use `gcp.pubsub.message.ack_deadline` instead.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `10`
                @available(*, deprecated, renamed: "OTelAttribute.gcp.pubsub.message.ackDeadline")
                public static let ackDeadline = "messaging.gcp_pubsub.message.ack_deadline"

                /// `messaging.gcp_pubsub.message.ack_id` **UNSTABLE**: Deprecated, use `gcp.pubsub.message.ack_id` instead.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `ack_id`
                @available(*, deprecated, renamed: "OTelAttribute.gcp.pubsub.message.ackId")
                public static let ackId = "messaging.gcp_pubsub.message.ack_id"

                /// `messaging.gcp_pubsub.message.delivery_attempt` **UNSTABLE**: Deprecated, use `gcp.pubsub.message.delivery_attempt` instead.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `2`
                @available(*, deprecated, renamed: "OTelAttribute.gcp.pubsub.message.deliveryAttempt")
                public static let deliveryAttempt = "messaging.gcp_pubsub.message.delivery_attempt"

                /// `messaging.gcp_pubsub.message.ordering_key` **UNSTABLE**: Deprecated, use `gcp.pubsub.message.ordering_key` instead.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `ordering_key`
                @available(*, deprecated, renamed: "OTelAttribute.gcp.pubsub.message.orderingKey")
                public static let orderingKey = "messaging.gcp_pubsub.message.ordering_key"
            }
        }

        /// `messaging.kafka` namespace
        public enum kafka {
            /// `messaging.kafka.offset` **UNSTABLE**: Deprecated, use `kafka.offset` instead.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `42`
            @available(*, deprecated, renamed: "OTelAttribute.kafka.offset")
            public static let offset = "messaging.kafka.offset"

            /// `messaging.kafka.cluster` namespace
            public enum cluster {
                /// `messaging.kafka.cluster.id` **UNSTABLE**: Deprecated, use `kafka.cluster.id` instead.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `MkU3OEVBNTcwNTJENDM2Qk`
                ///
                /// The cluster ID is a unique identifier reported by the Kafka broker. It identifies the cluster independently of the individual brokers the client is configured to connect to, and remains stable even if broker hostnames, IP addresses, or ports change.
                @available(*, deprecated, renamed: "OTelAttribute.kafka.cluster.id")
                public static let id = "messaging.kafka.cluster.id"
            }

            /// `messaging.kafka.consumer` namespace
            public enum consumer {
                /// `messaging.kafka.consumer.group` **UNSTABLE**: Deprecated, use `messaging.consumer.group.name` instead.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `my-group`
                @available(*, deprecated, renamed: "OTelAttribute.messaging.consumer.group.name")
                public static let group = "messaging.kafka.consumer.group"
            }

            /// `messaging.kafka.destination` namespace
            public enum destination {
                /// `messaging.kafka.destination.partition` **UNSTABLE**: Deprecated, use `messaging.destination.partition.id` instead.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `2`
                @available(
                    *,
                    deprecated,
                    message:
                        "Record string representation of the partition ID in `messaging.destination.partition.id` attribute."
                )
                public static let partition = "messaging.kafka.destination.partition"
            }

            /// `messaging.kafka.message` namespace
            public enum message {
                /// `messaging.kafka.message.key` **UNSTABLE**: Deprecated, use `kafka.message.key` instead.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `myKey`
                ///
                /// If the key type is not string, it's string representation has to be supplied for the attribute. If the key has no unambiguous, canonical string form, don't include its value.
                @available(*, deprecated, renamed: "OTelAttribute.kafka.message.key")
                public static let key = "messaging.kafka.message.key"

                /// `messaging.kafka.message.offset` **UNSTABLE**: Deprecated, use `kafka.offset` instead.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `42`
                @available(*, deprecated, renamed: "OTelAttribute.kafka.offset")
                public static let offset = "messaging.kafka.message.offset"

                /// `messaging.kafka.message.tombstone` **UNSTABLE**: Deprecated, use `kafka.message.tombstone` instead.
                ///
                /// - Stability: development
                /// - Type: boolean
                @available(*, deprecated, renamed: "OTelAttribute.kafka.message.tombstone")
                public static let tombstone = "messaging.kafka.message.tombstone"
            }
        }

        /// `messaging.message` namespace
        public enum message {
            /// `messaging.message.conversation_id` **UNSTABLE**: The conversation ID identifying the conversation to which the message belongs, represented as a string. Sometimes called "Correlation ID".
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `MyConversationId`
            public static let conversationId = "messaging.message.conversation_id"

            /// `messaging.message.id` **UNSTABLE**: A value used by the messaging system as an identifier for the message, represented as a string.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `452a7c7c7c7048c2f887f61572b18fc2`
            public static let id = "messaging.message.id"

            /// `messaging.message.body` namespace
            public enum body {
                /// `messaging.message.body.size` **UNSTABLE**: The size of the message body in bytes.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `1439`
                ///
                /// This can refer to both the compressed or uncompressed body size. If both sizes are known, the uncompressed
                /// body size should be used.
                public static let size = "messaging.message.body.size"
            }

            /// `messaging.message.envelope` namespace
            public enum envelope {
                /// `messaging.message.envelope.size` **UNSTABLE**: The size of the message body and metadata in bytes.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `2738`
                ///
                /// This can refer to both the compressed or uncompressed size. If both sizes are known, the uncompressed
                /// size should be used.
                public static let size = "messaging.message.envelope.size"
            }
        }

        /// `messaging.operation` namespace
        public enum operation {
            /// `messaging.operation.name` **UNSTABLE**: The system-specific name of the messaging operation.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `ack`
            ///     - `nack`
            ///     - `send`
            public static let name = "messaging.operation.name"

            /// `messaging.operation.type` **UNSTABLE**: A string identifying the type of the messaging operation.
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
            public static let `type` = "messaging.operation.type"
        }

        /// `messaging.rabbitmq` namespace
        public enum rabbitmq {
            /// `messaging.rabbitmq.destination` namespace
            public enum destination {
                /// `messaging.rabbitmq.destination.routing_key` **UNSTABLE**: Deprecated, use `rabbitmq.destination.routing_key` instead.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `myKey`
                @available(*, deprecated, renamed: "OTelAttribute.rabbitmq.destination.routingKey")
                public static let routingKey = "messaging.rabbitmq.destination.routing_key"
            }

            /// `messaging.rabbitmq.message` namespace
            public enum message {
                /// `messaging.rabbitmq.message.delivery_tag` **UNSTABLE**: Deprecated, use `rabbitmq.message.delivery_tag` instead.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `123`
                @available(*, deprecated, renamed: "OTelAttribute.rabbitmq.message.deliveryTag")
                public static let deliveryTag = "messaging.rabbitmq.message.delivery_tag"
            }
        }

        /// `messaging.rocketmq` namespace
        public enum rocketmq {
            /// `messaging.rocketmq.client_group` **UNSTABLE**: Deprecated, use `messaging.consumer.group.name` instead.
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
            public static let clientGroup = "messaging.rocketmq.client_group"

            /// `messaging.rocketmq.consumption_model` **UNSTABLE**: Deprecated, use `rocketmq.consumption_model` instead.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `clustering`: Clustering consumption model
            ///     - `broadcasting`: Broadcasting consumption model
            @available(*, deprecated, renamed: "OTelAttribute.rocketmq.consumptionModel")
            public static let consumptionModel = "messaging.rocketmq.consumption_model"

            /// `messaging.rocketmq.namespace` **UNSTABLE**: Deprecated, use `rocketmq.namespace` instead.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `myNamespace`
            @available(*, deprecated, renamed: "OTelAttribute.rocketmq.namespace")
            public static let namespace = "messaging.rocketmq.namespace"

            /// `messaging.rocketmq.message` namespace
            public enum message {
                /// `messaging.rocketmq.message.delay_time_level` **UNSTABLE**: Deprecated, use `rocketmq.message.delay_time_level` instead.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `3`
                @available(*, deprecated, renamed: "OTelAttribute.rocketmq.message.delayTimeLevel")
                public static let delayTimeLevel = "messaging.rocketmq.message.delay_time_level"

                /// `messaging.rocketmq.message.delivery_timestamp` **UNSTABLE**: Deprecated, use `rocketmq.message.delivery_timestamp` instead.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `1665987217045`
                @available(*, deprecated, renamed: "OTelAttribute.rocketmq.message.deliveryTimestamp")
                public static let deliveryTimestamp = "messaging.rocketmq.message.delivery_timestamp"

                /// `messaging.rocketmq.message.group` **UNSTABLE**: Deprecated, use `rocketmq.message.group` instead.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `myMessageGroup`
                @available(*, deprecated, renamed: "OTelAttribute.rocketmq.message.group")
                public static let group = "messaging.rocketmq.message.group"

                /// `messaging.rocketmq.message.keys` **UNSTABLE**: Deprecated, use `rocketmq.message.keys` instead.
                ///
                /// - Stability: development
                /// - Type: stringArray
                @available(*, deprecated, renamed: "OTelAttribute.rocketmq.message.keys")
                public static let keys = "messaging.rocketmq.message.keys"

                /// `messaging.rocketmq.message.tag` **UNSTABLE**: Deprecated, use `rocketmq.message.tag` instead.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `tagA`
                @available(*, deprecated, renamed: "OTelAttribute.rocketmq.message.tag")
                public static let tag = "messaging.rocketmq.message.tag"

                /// `messaging.rocketmq.message.type` **UNSTABLE**: Deprecated, use `rocketmq.message.type` instead.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `normal`: Normal message
                ///     - `fifo`: FIFO message
                ///     - `delay`: Delay message
                ///     - `transaction`: Transaction message
                @available(*, deprecated, renamed: "OTelAttribute.rocketmq.message.type")
                public static let `type` = "messaging.rocketmq.message.type"
            }
        }

        /// `messaging.servicebus` namespace
        public enum servicebus {
            /// `messaging.servicebus.disposition_status` **UNSTABLE**: Deprecated, use `azure.servicebus.disposition_status` instead.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `complete`: Message is completed
            ///     - `abandon`: Message is abandoned
            ///     - `dead_letter`: Message is sent to dead letter queue
            ///     - `defer`: Message is deferred
            @available(*, deprecated, renamed: "OTelAttribute.azure.servicebus.dispositionStatus")
            public static let dispositionStatus = "messaging.servicebus.disposition_status"

            /// `messaging.servicebus.destination` namespace
            public enum destination {
                /// `messaging.servicebus.destination.subscription_name` **UNSTABLE**: Deprecated, use `messaging.destination.subscription.name` instead.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `subscription-a`
                @available(*, deprecated, renamed: "OTelAttribute.messaging.destination.subscription.name")
                public static let subscriptionName = "messaging.servicebus.destination.subscription_name"
            }

            /// `messaging.servicebus.message` namespace
            public enum message {
                /// `messaging.servicebus.message.delivery_count` **UNSTABLE**: Deprecated, use `azure.servicebus.message.delivery_count` instead.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `2`
                @available(*, deprecated, renamed: "OTelAttribute.azure.servicebus.message.deliveryCount")
                public static let deliveryCount = "messaging.servicebus.message.delivery_count"

                /// `messaging.servicebus.message.enqueued_time` **UNSTABLE**: Deprecated, use `azure.servicebus.message.enqueued_time` instead.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `1701393730`
                @available(*, deprecated, renamed: "OTelAttribute.azure.servicebus.message.enqueuedTime")
                public static let enqueuedTime = "messaging.servicebus.message.enqueued_time"
            }
        }

        /// `messaging.system` namespace
        public enum system {
            /// `messaging.system.name` **UNSTABLE**: The messaging system as identified by the client instrumentation.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `activemq`: Apache ActiveMQ
            ///     - `aws.sns`: Amazon Simple Notification Service (SNS)
            ///     - `aws.sqs`: Amazon Simple Queue Service (SQS)
            ///     - `azure.eventgrid`: Azure Event Grid
            ///     - `azure.eventhubs`: Azure Event Hubs
            ///     - `azure.servicebus`: Azure Service Bus
            ///     - `gcp.pubsub`: Google Cloud Pub/Sub
            ///     - `jms`: Java Message Service
            ///     - `kafka`: Apache Kafka
            ///     - `rabbitmq`: RabbitMQ
            ///     - `rocketmq`: Apache RocketMQ
            ///     - `pulsar`: Apache Pulsar
            ///
            /// The actual messaging system may differ from the one known by the client. For example, when using Kafka client libraries to communicate with Azure Event Hubs, the `messaging.system.name` is set to `kafka` based on the instrumentation's best knowledge.
            public static let name = "messaging.system.name"
        }
    }
    #endif
}
