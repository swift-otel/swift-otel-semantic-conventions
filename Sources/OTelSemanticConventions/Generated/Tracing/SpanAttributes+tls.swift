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
    /// `tls` namespace
    public var tls: TlsAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct TlsAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `tls.cipher`: String indicating the [cipher](https://datatracker.ietf.org/doc/html/rfc5246#appendix-A.5) used during the current connection.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `TLS_RSA_WITH_3DES_EDE_CBC_SHA`
            ///     - `TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256`
            ///
            /// The values allowed for `tls.cipher` MUST be one of the `Descriptions` of the [registered TLS Cipher Suits](https://www.iana.org/assignments/tls-parameters/tls-parameters.xhtml#table-tls-parameters-4).
            public var cipher: SpanAttributeKey<String> { .init(name: OTelAttribute.tls.cipher) }

            /// `tls.curve`: String indicating the curve used for the given cipher, when applicable
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `secp256r1`
            public var curve: SpanAttributeKey<String> { .init(name: OTelAttribute.tls.curve) }

            /// `tls.established`: Boolean flag indicating if the TLS negotiation was successful and transitioned to an encrypted tunnel.
            ///
            /// - Stability: development
            /// - Type: boolean
            /// - Example: `true`
            public var established: SpanAttributeKey<Bool> { .init(name: OTelAttribute.tls.established) }

            /// `tls.next_protocol`: String indicating the protocol being tunneled. Per the values in the [IANA registry](https://www.iana.org/assignments/tls-extensiontype-values/tls-extensiontype-values.xhtml#alpn-protocol-ids), this string should be lower case.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `http/1.1`
            public var nextProtocol: SpanAttributeKey<String> { .init(name: OTelAttribute.tls.nextProtocol) }

            /// `tls.resumed`: Boolean flag indicating if this TLS connection was resumed from an existing TLS negotiation.
            ///
            /// - Stability: development
            /// - Type: boolean
            /// - Example: `true`
            public var resumed: SpanAttributeKey<Bool> { .init(name: OTelAttribute.tls.resumed) }
        }

        /// `tls.client` namespace
        public var client: ClientAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ClientAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `tls.client.certificate`: PEM-encoded stand-alone certificate offered by the client. This is usually mutually-exclusive of `client.certificate_chain` since this value also exists in that list.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `MII...`
                public var certificate: SpanAttributeKey<String> { .init(name: OTelAttribute.tls.client.certificate) }

                /// `tls.client.certificate_chain`: Array of PEM-encoded certificates that make up the certificate chain offered by the client. This is usually mutually-exclusive of `client.certificate` since that value should be the first certificate in the chain.
                ///
                /// - Stability: development
                /// - Type: stringArray
                public var certificateChain: SpanAttributeKey<[String]> {
                    .init(name: OTelAttribute.tls.client.certificateChain)
                }

                /// `tls.client.issuer`: Distinguished name of [subject](https://datatracker.ietf.org/doc/html/rfc5280#section-4.1.2.6) of the issuer of the x.509 certificate presented by the client.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `CN=Example Root CA, OU=Infrastructure Team, DC=example, DC=com`
                public var issuer: SpanAttributeKey<String> { .init(name: OTelAttribute.tls.client.issuer) }

                /// `tls.client.ja3`: A hash that identifies clients based on how they perform an SSL/TLS handshake.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `d4e5b18d6b55c71272893221c96ba240`
                public var ja3: SpanAttributeKey<String> { .init(name: OTelAttribute.tls.client.ja3) }

                /// `tls.client.not_after`: Date/Time indicating when client certificate is no longer considered valid.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `2021-01-01T00:00:00.000Z`
                public var notAfter: SpanAttributeKey<String> { .init(name: OTelAttribute.tls.client.notAfter) }

                /// `tls.client.not_before`: Date/Time indicating when client certificate is first considered valid.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `1970-01-01T00:00:00.000Z`
                public var notBefore: SpanAttributeKey<String> { .init(name: OTelAttribute.tls.client.notBefore) }

                /// `tls.client.server_name`: Deprecated, use `server.address` instead.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `opentelemetry.io`
                @available(*, deprecated, renamed: "SpanAttributes.server.address")
                public var serverName: SpanAttributeKey<String> { .init(name: OTelAttribute.tls.client.serverName) }

                /// `tls.client.subject`: Distinguished name of subject of the x.509 certificate presented by the client.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `CN=myclient, OU=Documentation Team, DC=example, DC=com`
                public var subject: SpanAttributeKey<String> { .init(name: OTelAttribute.tls.client.subject) }

                /// `tls.client.supported_ciphers`: Array of ciphers offered by the client during the client hello.
                ///
                /// - Stability: development
                /// - Type: stringArray
                public var supportedCiphers: SpanAttributeKey<[String]> {
                    .init(name: OTelAttribute.tls.client.supportedCiphers)
                }
            }

            /// `tls.client.hash` namespace
            public var hash: HashAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct HashAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `tls.client.hash.md5`: Certificate fingerprint using the MD5 digest of DER-encoded version of certificate offered by the client. For consistency with other hash values, this value should be formatted as an uppercase hash.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `0F76C7F2C55BFD7D8E8B8F4BFBF0C9EC`
                    public var md5: SpanAttributeKey<String> { .init(name: OTelAttribute.tls.client.hash.md5) }

                    /// `tls.client.hash.sha1`: Certificate fingerprint using the SHA1 digest of DER-encoded version of certificate offered by the client. For consistency with other hash values, this value should be formatted as an uppercase hash.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `9E393D93138888D288266C2D915214D1D1CCEB2A`
                    public var sha1: SpanAttributeKey<String> { .init(name: OTelAttribute.tls.client.hash.sha1) }

                    /// `tls.client.hash.sha256`: Certificate fingerprint using the SHA256 digest of DER-encoded version of certificate offered by the client. For consistency with other hash values, this value should be formatted as an uppercase hash.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `0687F666A054EF17A08E2F2162EAB4CBC0D265E1D7875BE74BF3C712CA92DAF0`
                    public var sha256: SpanAttributeKey<String> { .init(name: OTelAttribute.tls.client.hash.sha256) }
                }
            }
        }

        /// `tls.protocol` namespace
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

                /// `tls.protocol.name`: Normalized lowercase protocol name parsed from original string of the negotiated [SSL/TLS protocol version](https://docs.openssl.org/1.1.1/man3/SSL_get_version/#return-values)
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `ssl`
                ///     - `tls`
                public var name: SpanAttributeKey<NameEnum> { .init(name: OTelAttribute.tls.`protocol`.name) }

                public struct NameEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                    public let rawValue: String
                    public init(rawValue: String) {
                        self.rawValue = rawValue
                    }
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
                    }
                }

                /// `tls.protocol.version`: Numeric part of the version parsed from the original string of the negotiated [SSL/TLS protocol version](https://docs.openssl.org/1.1.1/man3/SSL_get_version/#return-values)
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `1.2`
                ///     - `3`
                public var version: SpanAttributeKey<String> { .init(name: OTelAttribute.tls.`protocol`.version) }
            }
        }

        /// `tls.server` namespace
        public var server: ServerAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ServerAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `tls.server.certificate`: PEM-encoded stand-alone certificate offered by the server. This is usually mutually-exclusive of `server.certificate_chain` since this value also exists in that list.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `MII...`
                public var certificate: SpanAttributeKey<String> { .init(name: OTelAttribute.tls.server.certificate) }

                /// `tls.server.certificate_chain`: Array of PEM-encoded certificates that make up the certificate chain offered by the server. This is usually mutually-exclusive of `server.certificate` since that value should be the first certificate in the chain.
                ///
                /// - Stability: development
                /// - Type: stringArray
                public var certificateChain: SpanAttributeKey<[String]> {
                    .init(name: OTelAttribute.tls.server.certificateChain)
                }

                /// `tls.server.issuer`: Distinguished name of [subject](https://datatracker.ietf.org/doc/html/rfc5280#section-4.1.2.6) of the issuer of the x.509 certificate presented by the client.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `CN=Example Root CA, OU=Infrastructure Team, DC=example, DC=com`
                public var issuer: SpanAttributeKey<String> { .init(name: OTelAttribute.tls.server.issuer) }

                /// `tls.server.ja3s`: A hash that identifies servers based on how they perform an SSL/TLS handshake.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `d4e5b18d6b55c71272893221c96ba240`
                public var ja3s: SpanAttributeKey<String> { .init(name: OTelAttribute.tls.server.ja3s) }

                /// `tls.server.not_after`: Date/Time indicating when server certificate is no longer considered valid.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `2021-01-01T00:00:00.000Z`
                public var notAfter: SpanAttributeKey<String> { .init(name: OTelAttribute.tls.server.notAfter) }

                /// `tls.server.not_before`: Date/Time indicating when server certificate is first considered valid.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `1970-01-01T00:00:00.000Z`
                public var notBefore: SpanAttributeKey<String> { .init(name: OTelAttribute.tls.server.notBefore) }

                /// `tls.server.subject`: Distinguished name of subject of the x.509 certificate presented by the server.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `CN=myserver, OU=Documentation Team, DC=example, DC=com`
                public var subject: SpanAttributeKey<String> { .init(name: OTelAttribute.tls.server.subject) }
            }

            /// `tls.server.hash` namespace
            public var hash: HashAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct HashAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `tls.server.hash.md5`: Certificate fingerprint using the MD5 digest of DER-encoded version of certificate offered by the server. For consistency with other hash values, this value should be formatted as an uppercase hash.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `0F76C7F2C55BFD7D8E8B8F4BFBF0C9EC`
                    public var md5: SpanAttributeKey<String> { .init(name: OTelAttribute.tls.server.hash.md5) }

                    /// `tls.server.hash.sha1`: Certificate fingerprint using the SHA1 digest of DER-encoded version of certificate offered by the server. For consistency with other hash values, this value should be formatted as an uppercase hash.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `9E393D93138888D288266C2D915214D1D1CCEB2A`
                    public var sha1: SpanAttributeKey<String> { .init(name: OTelAttribute.tls.server.hash.sha1) }

                    /// `tls.server.hash.sha256`: Certificate fingerprint using the SHA256 digest of DER-encoded version of certificate offered by the server. For consistency with other hash values, this value should be formatted as an uppercase hash.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `0687F666A054EF17A08E2F2162EAB4CBC0D265E1D7875BE74BF3C712CA92DAF0`
                    public var sha256: SpanAttributeKey<String> { .init(name: OTelAttribute.tls.server.hash.sha256) }
                }
            }
        }
    }
    #endif
}

#endif
