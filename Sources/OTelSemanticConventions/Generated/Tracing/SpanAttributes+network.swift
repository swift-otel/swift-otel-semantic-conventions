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
    /// `network` namespace
    public var network: NetworkAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct NetworkAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

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
            public var transport: SpanAttributeKey<TransportEnum> { .init(name: OTelAttribute.network.transport) }

            public struct TransportEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                public let rawValue: String
                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
                /// `tcp`: TCP
                public static let tcp = Self.init(rawValue: "tcp")
                /// `udp`: UDP
                public static let udp = Self.init(rawValue: "udp")
                /// `pipe`: Named or anonymous pipe.
                public static let pipe = Self.init(rawValue: "pipe")
                /// `unix`: Unix domain socket
                public static let unix = Self.init(rawValue: "unix")
                /// `quic`: QUIC
                public static let quic = Self.init(rawValue: "quic")
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    .string(self.rawValue)
                }
            }

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
            public var `type`: SpanAttributeKey<TypeEnum> { .init(name: OTelAttribute.network.`type`) }

            public struct TypeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                public let rawValue: String
                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
                /// `ipv4`: IPv4
                public static let ipv4 = Self.init(rawValue: "ipv4")
                /// `ipv6`: IPv6
                public static let ipv6 = Self.init(rawValue: "ipv6")
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    .string(self.rawValue)
                }
            }
        }

        #if Experimental
        /// `network.carrier` namespace
        public var carrier: CarrierAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct CarrierAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `network.carrier.icc`: The ISO 3166-1 alpha-2 2-character country code associated with the mobile carrier network.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `DE`
                public var icc: SpanAttributeKey<String> { .init(name: OTelAttribute.network.carrier.icc) }

                /// `network.carrier.mcc`: The mobile carrier country code.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `310`
                public var mcc: SpanAttributeKey<String> { .init(name: OTelAttribute.network.carrier.mcc) }

                /// `network.carrier.mnc`: The mobile carrier network code.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `001`
                public var mnc: SpanAttributeKey<String> { .init(name: OTelAttribute.network.carrier.mnc) }

                /// `network.carrier.name`: The name of the mobile carrier.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `sprint`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.network.carrier.name) }
            }
        }
        #endif

        #if Experimental
        /// `network.connection` namespace
        public var connection: ConnectionAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ConnectionAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `network.connection.state`: The state of network connection
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
                public var state: SpanAttributeKey<StateEnum> { .init(name: OTelAttribute.network.connection.state) }

                public struct StateEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                    public let rawValue: String
                    public init(rawValue: String) {
                        self.rawValue = rawValue
                    }
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
                    }
                }

                /// `network.connection.subtype`: This describes more details regarding the connection.type. It may be the type of cell technology connection, but it could be used for describing details about a wifi connection.
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
                public var subtype: SpanAttributeKey<SubtypeEnum> {
                    .init(name: OTelAttribute.network.connection.subtype)
                }

                public struct SubtypeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                    public let rawValue: String
                    public init(rawValue: String) {
                        self.rawValue = rawValue
                    }
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
                    }
                }

                /// `network.connection.type`: The internet connection type.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `wifi`
                ///     - `wired`
                ///     - `cell`
                ///     - `unavailable`
                ///     - `unknown`
                /// - Example: `wifi`
                public var `type`: SpanAttributeKey<TypeEnum> { .init(name: OTelAttribute.network.connection.`type`) }

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
        #endif

        #if Experimental
        /// `network.interface` namespace
        public var interface: InterfaceAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct InterfaceAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `network.interface.name`: The network interface name.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `lo`
                ///     - `eth0`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.network.interface.name) }
            }
        }
        #endif

        #if Experimental
        /// `network.io` namespace
        public var io: IoAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct IoAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `network.io.direction`: The network IO operation direction.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `transmit`
                ///     - `receive`
                /// - Example: `transmit`
                public var direction: SpanAttributeKey<DirectionEnum> {
                    .init(name: OTelAttribute.network.io.direction)
                }

                public struct DirectionEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
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
        #endif

        /// `network.local` namespace
        public var local: LocalAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct LocalAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `network.local.address`: Local address of the network connection - IP address or Unix domain socket name.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Examples:
                ///     - `10.1.2.80`
                ///     - `/tmp/my.sock`
                public var address: SpanAttributeKey<String> { .init(name: OTelAttribute.network.local.address) }

                /// `network.local.port`: Local port number of the network connection.
                ///
                /// - Stability: stable
                /// - Type: int
                /// - Example: `65123`
                public var port: SpanAttributeKey<Int> { .init(name: OTelAttribute.network.local.port) }
            }
        }

        /// `network.peer` namespace
        public var peer: PeerAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct PeerAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `network.peer.address`: Peer address of the network connection - IP address or Unix domain socket name.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Examples:
                ///     - `10.1.2.80`
                ///     - `/tmp/my.sock`
                public var address: SpanAttributeKey<String> { .init(name: OTelAttribute.network.peer.address) }

                /// `network.peer.port`: Peer port number of the network connection.
                ///
                /// - Stability: stable
                /// - Type: int
                /// - Example: `65123`
                public var port: SpanAttributeKey<Int> { .init(name: OTelAttribute.network.peer.port) }
            }
        }

        /// `network.protocol` namespace
        public var `protocol`: ProtocolAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ProtocolAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

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
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.network.`protocol`.name) }

                /// `network.protocol.version`: The actual version of the protocol used for network communication.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Examples:
                ///     - `1.1`
                ///     - `2`
                ///
                /// If protocol version is subject to negotiation (for example using [ALPN](https://www.rfc-editor.org/rfc/rfc7301.html)), this attribute SHOULD be set to the negotiated version. If the actual protocol version is not known, this attribute SHOULD NOT be set.
                public var version: SpanAttributeKey<String> { .init(name: OTelAttribute.network.`protocol`.version) }
            }
        }
    }
}

#endif
