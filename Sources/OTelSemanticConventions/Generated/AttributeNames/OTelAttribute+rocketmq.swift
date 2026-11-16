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
    /// `rocketmq` namespace
    public enum rocketmq {
        /// `rocketmq.consumption_model` **UNSTABLE**: Model of message consumption. This only applies to consumer spans.
        ///
        /// - Stability: development
        /// - Type: enum
        ///     - `clustering`: Clustering consumption model
        ///     - `broadcasting`: Broadcasting consumption model
        public static let consumptionModel = "rocketmq.consumption_model"

        /// `rocketmq.namespace` **UNSTABLE**: Namespace of RocketMQ resources, resources in different namespaces are individual.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `myNamespace`
        public static let namespace = "rocketmq.namespace"

        /// `rocketmq.message` namespace
        public enum message {
            /// `rocketmq.message.delay_time_level` **UNSTABLE**: The delay time level for delay message, which determines the message delay time.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `3`
            public static let delayTimeLevel = "rocketmq.message.delay_time_level"

            /// `rocketmq.message.delivery_timestamp` **UNSTABLE**: The timestamp in milliseconds that the delay message is expected to be delivered to consumer.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `1665987217045`
            public static let deliveryTimestamp = "rocketmq.message.delivery_timestamp"

            /// `rocketmq.message.group` **UNSTABLE**: It is essential for FIFO message. Messages that belong to the same message group are always processed one by one within the same consumer group.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `myMessageGroup`
            public static let group = "rocketmq.message.group"

            /// `rocketmq.message.keys` **UNSTABLE**: Key(s) of message, another way to mark message besides message ID.
            ///
            /// - Stability: development
            /// - Type: stringArray
            public static let keys = "rocketmq.message.keys"

            /// `rocketmq.message.tag` **UNSTABLE**: The secondary classifier of message besides topic.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `tagA`
            public static let tag = "rocketmq.message.tag"

            /// `rocketmq.message.type` **UNSTABLE**: Type of message.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `normal`: Normal message
            ///     - `fifo`: FIFO message
            ///     - `delay`: Delay message
            ///     - `transaction`: Transaction message
            public static let `type` = "rocketmq.message.type"
        }
    }
    #endif
}
