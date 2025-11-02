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
    /// `net` namespace
    public var net: NetAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct NetAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `net.transport` **UNSTABLE**: Deprecated, use `network.transport`.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `ip_tcp`
            ///     - `ip_udp`
            ///     - `pipe`: Named or anonymous pipe.
            ///     - `inproc`: In-process communication.
            ///     - `other`: Something else (non IP-based).
            @available(*, deprecated, renamed: "SpanAttributes.network.transport")
            public var transport: SpanAttributeKey<TransportEnum> { .init(name: OTelAttribute.net.transport) }

            public struct TransportEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                public let rawValue: String
                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    .string(self.rawValue)
                }
            }
        }

        /// `net.host` namespace
        public var host: HostAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct HostAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `net.host.ip` **UNSTABLE**: Deprecated, use `network.local.address`.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `192.168.0.1`
                @available(*, deprecated, renamed: "SpanAttributes.network.local.address")
                public var ip: SpanAttributeKey<String> { .init(name: OTelAttribute.net.host.ip) }

                /// `net.host.name` **UNSTABLE**: Deprecated, use `server.address`.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `example.com`
                @available(*, deprecated, renamed: "SpanAttributes.server.address")
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.net.host.name) }

                /// `net.host.port` **UNSTABLE**: Deprecated, use `server.port`.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `8080`
                @available(*, deprecated, renamed: "SpanAttributes.server.port")
                public var port: SpanAttributeKey<Int> { .init(name: OTelAttribute.net.host.port) }
            }
        }

        /// `net.peer` namespace
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

                /// `net.peer.ip` **UNSTABLE**: Deprecated, use `network.peer.address`.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `127.0.0.1`
                @available(*, deprecated, renamed: "SpanAttributes.network.peer.address")
                public var ip: SpanAttributeKey<String> { .init(name: OTelAttribute.net.peer.ip) }

                /// `net.peer.name` **UNSTABLE**: Deprecated, use `server.address` on client spans and `client.address` on server spans.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `example.com`
                @available(
                    *,
                    deprecated,
                    message: "Replaced by `server.address` on client spans and `client.address` on server spans."
                )
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.net.peer.name) }

                /// `net.peer.port` **UNSTABLE**: Deprecated, use `server.port` on client spans and `client.port` on server spans.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `8080`
                @available(
                    *,
                    deprecated,
                    message: "Replaced by `server.port` on client spans and `client.port` on server spans."
                )
                public var port: SpanAttributeKey<Int> { .init(name: OTelAttribute.net.peer.port) }
            }
        }

        /// `net.protocol` namespace
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

                /// `net.protocol.name` **UNSTABLE**: Deprecated, use `network.protocol.name`.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `amqp`
                ///     - `http`
                ///     - `mqtt`
                @available(*, deprecated, renamed: "SpanAttributes.network.protocol.name")
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.net.`protocol`.name) }

                /// `net.protocol.version` **UNSTABLE**: Deprecated, use `network.protocol.version`.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `3.1.1`
                @available(*, deprecated, renamed: "SpanAttributes.network.protocol.version")
                public var version: SpanAttributeKey<String> { .init(name: OTelAttribute.net.`protocol`.version) }
            }
        }

        /// `net.sock` namespace
        public var sock: SockAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct SockAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `net.sock.family` **UNSTABLE**: Deprecated, use `network.transport` and `network.type`.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `inet`: IPv4 address
                ///     - `inet6`: IPv6 address
                ///     - `unix`: Unix domain socket path
                @available(*, deprecated, message: "Split to `network.transport` and `network.type`.")
                public var family: SpanAttributeKey<FamilyEnum> { .init(name: OTelAttribute.net.sock.family) }

                public struct FamilyEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                    public let rawValue: String
                    public init(rawValue: String) {
                        self.rawValue = rawValue
                    }
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
                    }
                }
            }

            /// `net.sock.host` namespace
            public var host: HostAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct HostAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `net.sock.host.addr` **UNSTABLE**: Deprecated, use `network.local.address`.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `/var/my.sock`
                    @available(*, deprecated, renamed: "SpanAttributes.network.local.address")
                    public var addr: SpanAttributeKey<String> { .init(name: OTelAttribute.net.sock.host.addr) }

                    /// `net.sock.host.port` **UNSTABLE**: Deprecated, use `network.local.port`.
                    ///
                    /// - Stability: development
                    /// - Type: int
                    /// - Example: `8080`
                    @available(*, deprecated, renamed: "SpanAttributes.network.local.port")
                    public var port: SpanAttributeKey<Int> { .init(name: OTelAttribute.net.sock.host.port) }
                }
            }

            /// `net.sock.peer` namespace
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

                    /// `net.sock.peer.addr` **UNSTABLE**: Deprecated, use `network.peer.address`.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `192.168.0.1`
                    @available(*, deprecated, renamed: "SpanAttributes.network.peer.address")
                    public var addr: SpanAttributeKey<String> { .init(name: OTelAttribute.net.sock.peer.addr) }

                    /// `net.sock.peer.name` **UNSTABLE**: Deprecated, no replacement at this time.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `/var/my.sock`
                    @available(*, deprecated, message: "Obsoleted: Removed. No replacement at this time.")
                    public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.net.sock.peer.name) }

                    /// `net.sock.peer.port` **UNSTABLE**: Deprecated, use `network.peer.port`.
                    ///
                    /// - Stability: development
                    /// - Type: int
                    /// - Example: `65531`
                    @available(*, deprecated, renamed: "SpanAttributes.network.peer.port")
                    public var port: SpanAttributeKey<Int> { .init(name: OTelAttribute.net.sock.peer.port) }
                }
            }
        }
    }
    #endif
}

#endif
