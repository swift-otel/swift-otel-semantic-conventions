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
    /// `server` namespace
    public enum server {
        /// `server.address`: Server domain name if available without reverse DNS lookup; otherwise, IP address or UNIX domain socket name.
        ///
        /// - Stability: stable
        /// - Type: string
        /// - Examples:
        ///     - `example.com`
        ///     - `10.1.2.80`
        ///     - `/tmp/my.sock`
        ///
        /// When observed from the client side, and when communicating through an intermediary, `server.address` SHOULD represent the server address behind any intermediaries, for example proxies, if it's available.
        public static let address = "server.address"

        /// `server.port`: Server port number.
        ///
        /// - Stability: stable
        /// - Type: int
        /// - Examples:
        ///     - `80`
        ///     - `8080`
        ///     - `443`
        ///
        /// When observed from the client side, and when communicating through an intermediary, `server.port` SHOULD represent the server port behind any intermediaries, for example proxies, if it's available.
        public static let port = "server.port"

        #if Experimental
        /// `server.prefix` **UNSTABLE**: The IP prefix associated with the server IP address, in CIDR notation.
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
        /// This attribute MUST NOT be set unless `server.address` is set to an IPv4 or
        /// IPv6 address. The address MUST use the same IP version as this prefix and
        /// be contained in it.
        public static let prefix = "server.prefix"
        #endif

        #if Experimental
        /// `server.as` namespace
        public enum `as` {
            /// `server.as.number` **UNSTABLE**: The [Autonomous System Number (ASN)](https://www.iana.org/assignments/as-numbers/as-numbers.xhtml) associated with the server IP address.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Examples:
            ///     - `64496`
            ///     - `15169`
            ///
            /// This attribute SHOULD only be set when the server address is an IP address and the ASN is available from routing, enrichment, or lookup data. The value SHOULD be represented as an integer without the `AS` prefix.
            public static let number = "server.as.number"

            /// `server.as.organization` **UNSTABLE**: The name of the organization associated with the autonomous system of the server IP address.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `Example Networks Inc.`
            ///     - `Google LLC`
            ///
            /// This attribute SHOULD only be set when `server.as.number` is set and the organization name is available. The value SHOULD be the organization name as provided by the lookup or enrichment source, not the AS name or short code.
            public static let organization = "server.as.organization"
        }
        #endif

        #if Experimental
        /// `server.mac` namespace
        public enum mac {
            /// `server.mac.address` **UNSTABLE**: Server Media Access Control (MAC) address.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `00-00-5E-00-53-23`
            ///
            /// This attribute MUST identify a MAC address associated with the logical server
            /// endpoint, including when that endpoint is behind intermediaries. If the server's
            /// MAC address is unknown, this attribute MUST NOT be set. The MAC address of a
            /// proxy, gateway, or next-hop router MUST NOT be used as a substitute.
            ///
            /// MAC addresses MUST be represented in [IEEE RA hexadecimal form](https://standards.ieee.org/wp-content/uploads/import/documents/tutorials/eui.pdf):
            /// as hyphen-separated octets in uppercase hexadecimal form from most to least significant.
            ///
            /// > [!WARNING]
            /// >
            /// > This attribute may contain sensitive (PII) information.
            public static let address = "server.mac.address"
        }
        #endif

        #if Experimental
        /// `server.service` namespace
        public enum service {
            /// `server.service.name` **UNSTABLE**: Logical name of the service acting as the server in a connection-based network interaction.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `payments`
            ///
            /// SHOULD be equal to the actual [`service.name`](/docs/resource/README.md#service) resource attribute of the logical server, if any. This identifies the server service whether the telemetry is recorded by the client, the server, or another observer.
            public static let name = "server.service.name"

            /// `server.service.namespace` **UNSTABLE**: Logical namespace of the service acting as the server in a connection-based network interaction.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `Shop`
            ///
            /// SHOULD be equal to the actual [`service.namespace`](/docs/resource/README.md#service) resource attribute of the logical server, if any. This identifies the server service's namespace whether the telemetry is recorded by the client, the server, or another observer. Together with `server.service.name`, this identifies the server service. An empty namespace is equivalent to an unspecified namespace.
            public static let namespace = "server.service.namespace"
        }
        #endif
    }
}
