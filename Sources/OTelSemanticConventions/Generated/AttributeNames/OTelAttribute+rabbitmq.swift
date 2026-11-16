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
    /// `rabbitmq` namespace
    public enum rabbitmq {
        /// `rabbitmq.destination` namespace
        public enum destination {
            /// `rabbitmq.destination.routing_key` **UNSTABLE**: RabbitMQ message routing key.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `myKey`
            public static let routingKey = "rabbitmq.destination.routing_key"
        }

        /// `rabbitmq.message` namespace
        public enum message {
            /// `rabbitmq.message.delivery_tag` **UNSTABLE**: RabbitMQ message delivery tag
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `123`
            public static let deliveryTag = "rabbitmq.message.delivery_tag"
        }
    }
    #endif
}
