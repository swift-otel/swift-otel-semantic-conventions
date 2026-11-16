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
    /// `source` namespace
    public var source: SourceAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct SourceAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `source.address` **UNSTABLE**: Source address as observed at the point of instrumentation - typically an IP address, or a UNIX domain socket name; a domain name only when the sender was addressed by name (for example a peer-to-peer node dialed by hostname), never obtained via reverse DNS lookup.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `10.1.2.80`
            ///     - `source.example.com`
            ///     - `/tmp/my.sock`
            ///
            /// `source.address` SHOULD be the sender address as observed at the point of instrumentation, for example the source of the packet, flow, or exchange seen on the wire or socket. Instrumentation SHOULD capture the available address and SHOULD NOT try to resolve the address behind intermediaries such as proxies or load balancers, or perform a reverse DNS lookup to obtain a domain name.
            public var address: SpanAttributeKey<String> { .init(name: OTelAttribute.source.address) }

            /// `source.port` **UNSTABLE**: Source port number
            ///
            /// - Stability: development
            /// - Type: int
            /// - Examples:
            ///     - `3389`
            ///     - `2888`
            public var port: SpanAttributeKey<Int> { .init(name: OTelAttribute.source.port) }

            /// `source.prefix` **UNSTABLE**: The IP prefix associated with the source IP address, in CIDR notation.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `192.0.2.0/24`
            ///     - `2001:db8::/32`
            ///
            /// > [!WARNING]
            /// >
            /// > This attribute may contain sensitive (PII) information. A `/32` IPv4 prefix
            /// > or `/128` IPv6 prefix preserves the complete endpoint IP address.
            /// > Using CIDR notation does not guarantee that the data is anonymous.
            ///
            /// The value MUST be an IPv4 or IPv6 network prefix in CIDR notation, as defined in
            /// [RFC 4632](https://www.rfc-editor.org/rfc/rfc4632.html) for IPv4 and
            /// [RFC 4291](https://www.rfc-editor.org/rfc/rfc4291.html#section-2.3) for IPv6.
            /// IPv4 prefixes MUST use a dotted-decimal address followed by `/` and a decimal
            /// prefix length from 0 to 32. IPv6 prefixes MUST use the canonical address text
            /// representation defined in [RFC 5952](https://www.rfc-editor.org/rfc/rfc5952.html),
            /// followed by `/` and a decimal prefix length from 0 to 128. All host bits in
            /// the address MUST be set to zero. The value MUST NOT contain a domain name,
            /// UNIX domain socket name, or IPv6 zone identifier.
            ///
            /// Instrumentation or Collector receivers that populate this attribute MUST
            /// convert native representations, such as an address and subnet mask or an
            /// address and prefix length, to equivalent CIDR notation before emitting it.
            ///
            /// This attribute MAY be set whether or not `source.address` is set. If
            /// `source.address` is also set to an IP address, it MUST use the same IP version
            /// and be contained in this prefix.
            public var prefix: SpanAttributeKey<String> { .init(name: OTelAttribute.source.prefix) }
        }

        /// `source.as` namespace
        public var `as`: AsAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct AsAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `source.as.number` **UNSTABLE**: The [Autonomous System Number (ASN)](https://www.iana.org/assignments/as-numbers/as-numbers.xhtml) associated with the source IP address.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Examples:
                ///     - `64496`
                ///     - `15169`
                ///
                /// This attribute SHOULD only be set when the source address is an IP address and the ASN is available from routing, enrichment, or lookup data. The value SHOULD be represented as an integer without the `AS` prefix.
                public var number: SpanAttributeKey<Int> { .init(name: OTelAttribute.source.`as`.number) }

                /// `source.as.organization` **UNSTABLE**: The name of the organization associated with the autonomous system of the source IP address.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `Example Networks Inc.`
                ///     - `Google LLC`
                ///
                /// This attribute SHOULD only be set when `source.as.number` is set and the organization name is available. The value SHOULD be the organization name as provided by the lookup or enrichment source, not the AS name or short code.
                public var organization: SpanAttributeKey<String> {
                    .init(name: OTelAttribute.source.`as`.organization)
                }
            }
        }

        /// `source.mac` namespace
        public var mac: MacAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct MacAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `source.mac.address` **UNSTABLE**: Source Media Access Control (MAC) address.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `00-00-5E-00-53-23`
                ///
                /// MAC addresses MUST be represented in [IEEE RA hexadecimal form](https://standards.ieee.org/wp-content/uploads/import/documents/tutorials/eui.pdf):
                /// as hyphen-separated octets in uppercase hexadecimal form from most to least significant.
                ///
                /// > [!WARNING]
                /// >
                /// > This attribute may contain sensitive (PII) information.
                public var address: SpanAttributeKey<String> { .init(name: OTelAttribute.source.mac.address) }
            }
        }
    }
    #endif
}

#endif
