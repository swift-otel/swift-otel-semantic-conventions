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
        /// - Type: enum
        ///     - `tcp`: TCP
        ///     - `udp`: UDP
        ///     - `pipe`: Named or anonymous pipe.
        ///     - `unix`: Unix domain socket
        ///     - `quic`: QUIC
        /// - Examples:
        ///     - `tcp`
        ///     - `udp`
        ///
        /// The value SHOULD be normalized to lowercase.
        ///
        /// Consider always setting the transport when setting a port number, since
        /// a port number is ambiguous without knowing the transport. For example
        /// different processes could be listening on TCP port 12345 and UDP port 12345.
        public static let transport = "network.transport"

        /// `network.type`: [OSI network layer](https://wikipedia.org/wiki/Network_layer) or non-OSI equivalent.
        ///
        /// - Stability: stable
        /// - Type: enum
        ///     - `ipv4`: IPv4
        ///     - `ipv6`: IPv6
        /// - Examples:
        ///     - `ipv4`
        ///     - `ipv6`
        ///
        /// The value SHOULD be normalized to lowercase.
        public static let `type` = "network.type"

        #if Experimental
        /// `network.carrier` namespace
        public enum carrier {
            /// `network.carrier.icc` **UNSTABLE**: The ISO 3166-1 alpha-2 2-character country code associated with the mobile carrier network.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `DE`
            public static let icc = "network.carrier.icc"

            /// `network.carrier.mcc` **UNSTABLE**: The mobile carrier country code.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `310`
            public static let mcc = "network.carrier.mcc"

            /// `network.carrier.mnc` **UNSTABLE**: The mobile carrier network code.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `001`
            public static let mnc = "network.carrier.mnc"

            /// `network.carrier.name` **UNSTABLE**: The name of the mobile carrier.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `sprint`
            public static let name = "network.carrier.name"
        }
        #endif

        #if Experimental
        /// `network.connection` namespace
        public enum connection {
            /// `network.connection.state` **UNSTABLE**: The state of network connection
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `closed`
            ///     - `close_wait`
            ///     - `closing`
            ///     - `established`
            ///     - `fin_wait_1`
            ///     - `fin_wait_2`
            ///     - `last_ack`
            ///     - `listen`
            ///     - `syn_received`
            ///     - `syn_sent`
            ///     - `time_wait`
            /// - Example: `close_wait`
            ///
            /// Connection states are defined as part of the [rfc9293](https://datatracker.ietf.org/doc/html/rfc9293#section-3.3.2)
            public static let state = "network.connection.state"

            /// `network.connection.subtype` **UNSTABLE**: This describes more details regarding the connection.type. It may be the type of cell technology connection, but it could be used for describing details about a wifi connection.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `gprs`: GPRS
            ///     - `edge`: EDGE
            ///     - `umts`: UMTS
            ///     - `cdma`: CDMA
            ///     - `evdo_0`: EVDO Rel. 0
            ///     - `evdo_a`: EVDO Rev. A
            ///     - `cdma2000_1xrtt`: CDMA2000 1XRTT
            ///     - `hsdpa`: HSDPA
            ///     - `hsupa`: HSUPA
            ///     - `hspa`: HSPA
            ///     - `iden`: IDEN
            ///     - `evdo_b`: EVDO Rev. B
            ///     - `lte`: LTE
            ///     - `ehrpd`: EHRPD
            ///     - `hspap`: HSPAP
            ///     - `gsm`: GSM
            ///     - `td_scdma`: TD-SCDMA
            ///     - `iwlan`: IWLAN
            ///     - `nr`: 5G NR (New Radio)
            ///     - `nrnsa`: 5G NRNSA (New Radio Non-Standalone)
            ///     - `lte_ca`: LTE CA
            /// - Example: `LTE`
            public static let subtype = "network.connection.subtype"

            /// `network.connection.type` **UNSTABLE**: The internet connection type.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `wifi`
            ///     - `wired`
            ///     - `cell`
            ///     - `unavailable`
            ///     - `unknown`
            /// - Example: `wifi`
            public static let `type` = "network.connection.type"
        }
        #endif

        #if Experimental
        /// `network.interface` namespace
        public enum interface {
            /// `network.interface.name` **UNSTABLE**: The network interface name.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `lo`
            ///     - `eth0`
            public static let name = "network.interface.name"
        }
        #endif

        #if Experimental
        /// `network.io` namespace
        public enum io {
            /// `network.io.direction` **UNSTABLE**: The network IO operation direction.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `transmit`
            ///     - `receive`
            /// - Example: `transmit`
            public static let direction = "network.io.direction"
        }
        #endif

        /// `network.local` namespace
        public enum local {
            /// `network.local.address`: Local address of the network connection - IP address or Unix domain socket name.
            ///
            /// - Stability: stable
            /// - Type: string
            /// - Examples:
            ///     - `10.1.2.80`
            ///     - `/tmp/my.sock`
            public static let address = "network.local.address"

            /// `network.local.port`: Local port number of the network connection.
            ///
            /// - Stability: stable
            /// - Type: int
            /// - Example: `65123`
            public static let port = "network.local.port"
        }

        /// `network.peer` namespace
        public enum peer {
            /// `network.peer.address`: Peer address of the network connection - IP address or Unix domain socket name.
            ///
            /// - Stability: stable
            /// - Type: string
            /// - Examples:
            ///     - `10.1.2.80`
            ///     - `/tmp/my.sock`
            public static let address = "network.peer.address"

            /// `network.peer.port`: Peer port number of the network connection.
            ///
            /// - Stability: stable
            /// - Type: int
            /// - Example: `65123`
            public static let port = "network.peer.port"
        }

        /// `network.protocol` namespace
        public enum `protocol` {
            /// `network.protocol.name`: [OSI application layer](https://wikipedia.org/wiki/Application_layer) or non-OSI equivalent.
            ///
            /// - Stability: stable
            /// - Type: string
            /// - Examples:
            ///     - `amqp`
            ///     - `http`
            ///     - `mqtt`
            ///
            /// The value SHOULD be normalized to lowercase.
            public static let name = "network.protocol.name"

            /// `network.protocol.version`: The actual version of the protocol used for network communication.
            ///
            /// - Stability: stable
            /// - Type: string
            /// - Examples:
            ///     - `1.1`
            ///     - `2`
            ///
            /// If protocol version is subject to negotiation (for example using [ALPN](https://www.rfc-editor.org/rfc/rfc7301.html)), this attribute SHOULD be set to the negotiated version. If the actual protocol version is not known, this attribute SHOULD NOT be set.
            public static let version = "network.protocol.version"
        }
    }
}
