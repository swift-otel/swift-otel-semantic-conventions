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
        public var attributes: SpanAttributes

        public init(attributes: SpanAttributes) {
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
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
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
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
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
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
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
