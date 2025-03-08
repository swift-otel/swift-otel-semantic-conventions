// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
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
            /// 
            /// - Type: enum
            ///     - `tcp`: TCP
            ///     - `udp`: UDP
            ///     - `pipe`: Named or anonymous pipe.
            ///     - `unix`: Unix domain socket
            ///     - `quic`: QUIC
            /// 
            /// The value SHOULD be normalized to lowercase.  Consider always setting the transport when setting a port number, since a port number is ambiguous without knowing the transport. For example different processes could be listening on TCP port 12345 and UDP port 12345. 
            /// 
            /// - Examples:
            ///     - `tcp`
            ///     - `udp`
            public var transport: Self.Key<TransportEnum> { .init(name: OTelAttribute.network.transport) }
            
            public struct TransportEnum: SpanAttributeConvertible {
                private let rawValue: String
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
                    return .string(self.rawValue)
                }
            }
    
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
            public var type: Self.Key<TypeEnum> { .init(name: OTelAttribute.network.type) }
            
            public struct TypeEnum: SpanAttributeConvertible {
                private let rawValue: String
                /// `ipv4`: IPv4
                public static let ipv4 = Self.init(rawValue: "ipv4")
                /// `ipv6`: IPv6
                public static let ipv6 = Self.init(rawValue: "ipv6")
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(self.rawValue)
                }
            }
        }
    
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
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `network.carrier.icc`: The ISO 3166-1 alpha-2 2-character country code associated with the mobile carrier network.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `DE`
                public var icc: Self.Key<String> { .init(name: OTelAttribute.network.carrier.icc) }
        
                /// `network.carrier.mcc`: The mobile carrier country code.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `310`
                public var mcc: Self.Key<String> { .init(name: OTelAttribute.network.carrier.mcc) }
        
                /// `network.carrier.mnc`: The mobile carrier network code.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `001`
                public var mnc: Self.Key<String> { .init(name: OTelAttribute.network.carrier.mnc) }
        
                /// `network.carrier.name`: The name of the mobile carrier.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `sprint`
                public var name: Self.Key<String> { .init(name: OTelAttribute.network.carrier.name) }
            }
        
        
        }
    
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
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `network.connection.subtype`: This describes more details regarding the connection.type. It may be the type of cell technology connection, but it could be used for describing details about a wifi connection.
                /// 
                /// - Stability: experimental
                /// 
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
                /// 
                /// - Example: `LTE`
                public var subtype: Self.Key<SubtypeEnum> { .init(name: OTelAttribute.network.connection.subtype) }
                
                public struct SubtypeEnum: SpanAttributeConvertible {
                    private let rawValue: String
                    /// `gprs`: GPRS
                    public static let gprs = Self.init(rawValue: "gprs")
                    /// `edge`: EDGE
                    public static let edge = Self.init(rawValue: "edge")
                    /// `umts`: UMTS
                    public static let umts = Self.init(rawValue: "umts")
                    /// `cdma`: CDMA
                    public static let cdma = Self.init(rawValue: "cdma")
                    /// `evdo_0`: EVDO Rel. 0
                    public static let evdo_0 = Self.init(rawValue: "evdo_0")
                    /// `evdo_a`: EVDO Rev. A
                    public static let evdo_a = Self.init(rawValue: "evdo_a")
                    /// `cdma2000_1xrtt`: CDMA2000 1XRTT
                    public static let cdma2000_1xrtt = Self.init(rawValue: "cdma2000_1xrtt")
                    /// `hsdpa`: HSDPA
                    public static let hsdpa = Self.init(rawValue: "hsdpa")
                    /// `hsupa`: HSUPA
                    public static let hsupa = Self.init(rawValue: "hsupa")
                    /// `hspa`: HSPA
                    public static let hspa = Self.init(rawValue: "hspa")
                    /// `iden`: IDEN
                    public static let iden = Self.init(rawValue: "iden")
                    /// `evdo_b`: EVDO Rev. B
                    public static let evdo_b = Self.init(rawValue: "evdo_b")
                    /// `lte`: LTE
                    public static let lte = Self.init(rawValue: "lte")
                    /// `ehrpd`: EHRPD
                    public static let ehrpd = Self.init(rawValue: "ehrpd")
                    /// `hspap`: HSPAP
                    public static let hspap = Self.init(rawValue: "hspap")
                    /// `gsm`: GSM
                    public static let gsm = Self.init(rawValue: "gsm")
                    /// `td_scdma`: TD-SCDMA
                    public static let td_scdma = Self.init(rawValue: "td_scdma")
                    /// `iwlan`: IWLAN
                    public static let iwlan = Self.init(rawValue: "iwlan")
                    /// `nr`: 5G NR (New Radio)
                    public static let nr = Self.init(rawValue: "nr")
                    /// `nrnsa`: 5G NRNSA (New Radio Non-Standalone)
                    public static let nrnsa = Self.init(rawValue: "nrnsa")
                    /// `lte_ca`: LTE CA
                    public static let lte_ca = Self.init(rawValue: "lte_ca")
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
        
                /// `network.connection.type`: The internet connection type.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `wifi`
                ///     - `wired`
                ///     - `cell`
                ///     - `unavailable`
                ///     - `unknown`
                /// 
                /// - Example: `wifi`
                public var type: Self.Key<TypeEnum> { .init(name: OTelAttribute.network.connection.type) }
                
                public struct TypeEnum: SpanAttributeConvertible {
                    private let rawValue: String
                    /// `wifi`
                    public static let wifi = Self.init(rawValue: "wifi")
                    /// `wired`
                    public static let wired = Self.init(rawValue: "wired")
                    /// `cell`
                    public static let cell = Self.init(rawValue: "cell")
                    /// `unavailable`
                    public static let unavailable = Self.init(rawValue: "unavailable")
                    /// `unknown`
                    public static let unknown = Self.init(rawValue: "unknown")
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
        
        }
    
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
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `network.interface.name`: The network interface name.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `lo`
                ///     - `eth0`
                public var name: Self.Key<String> { .init(name: OTelAttribute.network.interface.name) }
            }
        
        
        }
    
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
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `network.io.direction`: The network IO operation direction.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `transmit`
                ///     - `receive`
                /// 
                /// - Example: `transmit`
                public var direction: Self.Key<DirectionEnum> { .init(name: OTelAttribute.network.io.direction) }
                
                public struct DirectionEnum: SpanAttributeConvertible {
                    private let rawValue: String
                    /// `transmit`
                    public static let transmit = Self.init(rawValue: "transmit")
                    /// `receive`
                    public static let receive = Self.init(rawValue: "receive")
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
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
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `10.1.2.80`
                ///     - `/tmp/my.sock`
                public var address: Self.Key<String> { .init(name: OTelAttribute.network.local.address) }
        
                /// `network.local.port`: Local port number of the network connection.
                /// 
                /// - Stability: stable
                /// 
                /// - Type: int
                /// 
                /// - Example: `65123`
                public var port: Self.Key<Int> { .init(name: OTelAttribute.network.local.port) }
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
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `10.1.2.80`
                ///     - `/tmp/my.sock`
                public var address: Self.Key<String> { .init(name: OTelAttribute.network.peer.address) }
        
                /// `network.peer.port`: Peer port number of the network connection.
                /// 
                /// - Stability: stable
                /// 
                /// - Type: int
                /// 
                /// - Example: `65123`
                public var port: Self.Key<Int> { .init(name: OTelAttribute.network.peer.port) }
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
                /// 
                /// - Type: string
                /// 
                /// The value SHOULD be normalized to lowercase.
                /// 
                /// - Examples:
                ///     - `amqp`
                ///     - `http`
                ///     - `mqtt`
                public var name: Self.Key<String> { .init(name: OTelAttribute.network.protocol.name) }
        
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
                public var version: Self.Key<String> { .init(name: OTelAttribute.network.protocol.version) }
            }
        
        
        }
    }
}