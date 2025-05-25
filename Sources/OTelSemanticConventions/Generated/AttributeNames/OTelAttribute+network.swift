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
    /// `network` namespace
    public enum network {
        /// `network.transport`: [OSI transport layer](https://wikipedia.org/wiki/Transport_layer) or [inter-process communication method](https://wikipedia.org/wiki/Inter-process_communication).
        ///
        /// - Stability: stable
        ///
        /// - Type: enum
        ///     - `tcp`: TCP
        ///     - `udp`: UDP
        ///     - `pipe`: Named or anonymous pipe.
        ///     - `unix`: Unix domain socket
        ///     - `quic`: QUIC
        ///
        /// The value SHOULD be normalized to lowercase.
        ///
        /// Consider always setting the transport when setting a port number, since
        /// a port number is ambiguous without knowing the transport. For example
        /// different processes could be listening on TCP port 12345 and UDP port 12345.
        ///
        /// - Examples:
        ///     - `tcp`
        ///     - `udp`
        public static let transport = "network.transport"

        /// `network.type`: [OSI network layer](https://wikipedia.org/wiki/Network_layer) or non-OSI equivalent.
        ///
        /// - Stability: stable
        ///
        /// - Type: enum
        ///     - `ipv4`: IPv4
        ///     - `ipv6`: IPv6
        ///
        /// The value SHOULD be normalized to lowercase.
        ///
        /// - Examples:
        ///     - `ipv4`
        ///     - `ipv6`
        public static let `type` = "network.type"

        /// `network.local` namespace
        public enum local {
            /// `network.local.address`: Local address of the network connection - IP address or Unix domain socket name.
            ///
            /// - Stability: stable
            ///
            /// - Type: string
            ///
            /// - Examples:
            ///     - `10.1.2.80`
            ///     - `/tmp/my.sock`
            public static let address = "network.local.address"

            /// `network.local.port`: Local port number of the network connection.
            ///
            /// - Stability: stable
            ///
            /// - Type: int
            ///
            /// - Example: `65123`
            public static let port = "network.local.port"
        }

        /// `network.peer` namespace
        public enum peer {
            /// `network.peer.address`: Peer address of the network connection - IP address or Unix domain socket name.
            ///
            /// - Stability: stable
            ///
            /// - Type: string
            ///
            /// - Examples:
            ///     - `10.1.2.80`
            ///     - `/tmp/my.sock`
            public static let address = "network.peer.address"

            /// `network.peer.port`: Peer port number of the network connection.
            ///
            /// - Stability: stable
            ///
            /// - Type: int
            ///
            /// - Example: `65123`
            public static let port = "network.peer.port"
        }

        /// `network.protocol` namespace
        public enum `protocol` {
            /// `network.protocol.name`: [OSI application layer](https://wikipedia.org/wiki/Application_layer) or non-OSI equivalent.
            ///
            /// - Stability: stable
            ///
            /// - Type: string
            ///
            /// The value SHOULD be normalized to lowercase.
            ///
            /// - Examples:
            ///     - `amqp`
            ///     - `http`
            ///     - `mqtt`
            public static let name = "network.protocol.name"

            /// `network.protocol.version`: The actual version of the protocol used for network communication.
            ///
            /// - Stability: stable
            ///
            /// - Type: string
            ///
            /// If protocol version is subject to negotiation (for example using [ALPN](https://www.rfc-editor.org/rfc/rfc7301.html)), this attribute SHOULD be set to the negotiated version. If the actual protocol version is not known, this attribute SHOULD NOT be set.
            ///
            /// - Examples:
            ///     - `1.1`
            ///     - `2`
            public static let version = "network.protocol.version"
        }
    }
}
