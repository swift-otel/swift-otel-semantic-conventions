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
    /// `http` namespace
    public var http: HttpAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct HttpAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            #if Experimental
            /// `http.client_ip` **UNSTABLE**: Deprecated, use `client.address` instead.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `83.164.160.102`
            @available(*, deprecated, renamed: "SpanAttributes.client.address")
            public var clientIp: SpanAttributeKey<String> { .init(name: OTelAttribute.http.clientIp) }
            #endif

            #if Experimental
            /// `http.flavor` **UNSTABLE**: Deprecated, use `network.protocol.name` instead.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `1.0`: HTTP/1.0
            ///     - `1.1`: HTTP/1.1
            ///     - `2.0`: HTTP/2
            ///     - `3.0`: HTTP/3
            ///     - `SPDY`: SPDY protocol.
            ///     - `QUIC`: QUIC protocol.
            @available(*, deprecated, renamed: "SpanAttributes.network.protocol.name")
            public var flavor: SpanAttributeKey<FlavorEnum> { .init(name: OTelAttribute.http.flavor) }

            public struct FlavorEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                public let rawValue: String
                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    .string(self.rawValue)
                }
            }
            #endif

            #if Experimental
            /// `http.host` **UNSTABLE**: Deprecated, use one of `server.address`, `client.address` or `http.request.header.host` instead, depending on the usage.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `www.example.org`
            @available(
                *,
                deprecated,
                message:
                    "Replaced by one of `server.address`, `client.address` or `http.request.header.host`, depending on the usage."
            )
            public var host: SpanAttributeKey<String> { .init(name: OTelAttribute.http.host) }
            #endif

            #if Experimental
            /// `http.method` **UNSTABLE**: Deprecated, use `http.request.method` instead.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `GET`
            ///     - `POST`
            ///     - `HEAD`
            @available(*, deprecated, renamed: "SpanAttributes.http.request.method")
            public var method: SpanAttributeKey<String> { .init(name: OTelAttribute.http.method) }
            #endif

            #if Experimental
            /// `http.request_content_length` **UNSTABLE**: Deprecated, use `http.request.header.content-length` instead.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `3495`
            @available(*, deprecated, message: "Replaced by `http.request.header.content-length`.")
            public var requestContentLength: SpanAttributeKey<Int> {
                .init(name: OTelAttribute.http.requestContentLength)
            }
            #endif

            #if Experimental
            /// `http.request_content_length_uncompressed` **UNSTABLE**: Deprecated, use `http.request.body.size` instead.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `5493`
            @available(*, deprecated, renamed: "SpanAttributes.http.request.body.size")
            public var requestContentLengthUncompressed: SpanAttributeKey<Int> {
                .init(name: OTelAttribute.http.requestContentLengthUncompressed)
            }
            #endif

            #if Experimental
            /// `http.response_content_length` **UNSTABLE**: Deprecated, use `http.response.header.content-length` instead.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `3495`
            @available(*, deprecated, message: "Replaced by `http.response.header.content-length`.")
            public var responseContentLength: SpanAttributeKey<Int> {
                .init(name: OTelAttribute.http.responseContentLength)
            }
            #endif

            #if Experimental
            /// `http.response_content_length_uncompressed` **UNSTABLE**: Deprecated, use `http.response.body.size` instead.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `5493`
            @available(*, deprecated, renamed: "SpanAttributes.http.response.body.size")
            public var responseContentLengthUncompressed: SpanAttributeKey<Int> {
                .init(name: OTelAttribute.http.responseContentLengthUncompressed)
            }
            #endif

            /// `http.route`: The matched route, that is, the path template in the format used by the respective server framework.
            ///
            /// - Stability: stable
            /// - Type: string
            /// - Examples:
            ///     - `/users/:userID?`
            ///     - `{controller}/{action}/{id?}`
            ///
            /// MUST NOT be populated when this is not supported by the HTTP server framework as the route attribute should have low-cardinality and the URI path can NOT substitute it.
            /// SHOULD include the [application root](/docs/http/http-spans.md#http-server-definitions) if there is one.
            public var route: SpanAttributeKey<String> { .init(name: OTelAttribute.http.route) }

            #if Experimental
            /// `http.scheme` **UNSTABLE**: Deprecated, use `url.scheme` instead.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `http`
            ///     - `https`
            @available(*, deprecated, renamed: "SpanAttributes.url.scheme")
            public var scheme: SpanAttributeKey<String> { .init(name: OTelAttribute.http.scheme) }
            #endif

            #if Experimental
            /// `http.server_name` **UNSTABLE**: Deprecated, use `server.address` instead.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `example.com`
            @available(*, deprecated, renamed: "SpanAttributes.server.address")
            public var serverName: SpanAttributeKey<String> { .init(name: OTelAttribute.http.serverName) }
            #endif

            #if Experimental
            /// `http.status_code` **UNSTABLE**: Deprecated, use `http.response.status_code` instead.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `200`
            @available(*, deprecated, renamed: "SpanAttributes.http.response.statusCode")
            public var statusCode: SpanAttributeKey<Int> { .init(name: OTelAttribute.http.statusCode) }
            #endif

            #if Experimental
            /// `http.target` **UNSTABLE**: Deprecated, use `url.path` and `url.query` instead.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `/search?q=OpenTelemetry#SemConv`
            @available(*, deprecated, message: "Obsoleted: Split to `url.path` and `url.query`.")
            public var target: SpanAttributeKey<String> { .init(name: OTelAttribute.http.target) }
            #endif

            #if Experimental
            /// `http.url` **UNSTABLE**: Deprecated, use `url.full` instead.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `https://www.foo.bar/search?q=OpenTelemetry#SemConv`
            @available(*, deprecated, renamed: "SpanAttributes.url.full")
            public var url: SpanAttributeKey<String> { .init(name: OTelAttribute.http.url) }
            #endif

            #if Experimental
            /// `http.user_agent` **UNSTABLE**: Deprecated, use `user_agent.original` instead.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `CERN-LineMode/2.15 libwww/2.17b3`
            ///     - `Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1`
            @available(*, deprecated, renamed: "SpanAttributes.userAgent.original")
            public var userAgent: SpanAttributeKey<String> { .init(name: OTelAttribute.http.userAgent) }
            #endif
        }

        #if Experimental
        /// `http.connection` namespace
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

                /// `http.connection.state` **UNSTABLE**: State of the HTTP connection in the HTTP connection pool.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `active`: active state.
                ///     - `idle`: idle state.
                /// - Examples:
                ///     - `active`
                ///     - `idle`
                public var state: SpanAttributeKey<StateEnum> { .init(name: OTelAttribute.http.connection.state) }

                public struct StateEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
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

        /// `http.request` namespace
        public var request: RequestAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct RequestAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            /// `http.request.header`: HTTP request headers, `<key>` being the normalized HTTP Header name (lowercase), the value being the header values.
            ///
            /// - Stability: stable
            /// - Type: templateStringArray
            ///
            /// Instrumentations SHOULD require an explicit configuration of which headers are to be captured.
            /// Including all request headers can be a security risk - explicit configuration helps avoid leaking sensitive information.
            ///
            /// The `User-Agent` header is already captured in the `user_agent.original` attribute.
            /// Users MAY explicitly configure instrumentations to capture them even though it is not recommended.
            ///
            /// The attribute value MUST consist of either multiple header values as an array of strings
            /// or a single-item array containing a possibly comma-concatenated string, depending on the way
            /// the HTTP library provides access to headers.
            ///
            /// Examples:
            ///
            /// - A header `Content-Type: application/json` SHOULD be recorded as the `http.request.header.content-type`
            ///   attribute with value `["application/json"]`.
            /// - A header `X-Forwarded-For: 1.2.3.4, 1.2.3.5` SHOULD be recorded as the `http.request.header.x-forwarded-for`
            ///   attribute with value `["1.2.3.4", "1.2.3.5"]` or `["1.2.3.4, 1.2.3.5"]` depending on the HTTP library.
            public var header: HeaderAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct HeaderAttributes {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: [String]) {
                    let attributeID = self.attributeID(forKey: key)
                    self.attributes[attributeID] = value
                }

                private func attributeID(forKey key: String) -> String {
                    var attributeID = "http.request.header."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeID.append("_")
                        } else {
                            attributeID.append(character.lowercased())
                        }
                    }

                    return attributeID
                }
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `http.request.method`: HTTP request method.
                ///
                /// - Stability: stable
                /// - Type: enum
                ///     - `CONNECT`: CONNECT method.
                ///     - `DELETE`: DELETE method.
                ///     - `GET`: GET method.
                ///     - `HEAD`: HEAD method.
                ///     - `OPTIONS`: OPTIONS method.
                ///     - `PATCH`: PATCH method.
                ///     - `POST`: POST method.
                ///     - `PUT`: PUT method.
                ///     - `TRACE`: TRACE method.
                ///     - `_OTHER`: Any HTTP method that the instrumentation has no prior knowledge of.
                /// - Examples:
                ///     - `GET`
                ///     - `POST`
                ///     - `HEAD`
                ///
                /// HTTP request method value SHOULD be "known" to the instrumentation.
                /// By default, this convention defines "known" methods as the ones listed in [RFC9110](https://www.rfc-editor.org/rfc/rfc9110.html#name-methods)
                /// and the PATCH method defined in [RFC5789](https://www.rfc-editor.org/rfc/rfc5789.html).
                ///
                /// If the HTTP request method is not known to instrumentation, it MUST set the `http.request.method` attribute to `_OTHER`.
                ///
                /// If the HTTP instrumentation could end up converting valid HTTP request methods to `_OTHER`, then it MUST provide a way to override
                /// the list of known HTTP methods. If this override is done via environment variable, then the environment variable MUST be named
                /// OTEL_INSTRUMENTATION_HTTP_KNOWN_METHODS and support a comma-separated list of case-sensitive known HTTP methods
                /// (this list MUST be a full override of the default known method, it is not a list of known methods in addition to the defaults).
                ///
                /// HTTP method names are case-sensitive and `http.request.method` attribute value MUST match a known HTTP method name exactly.
                /// Instrumentations for specific web frameworks that consider HTTP methods to be case insensitive, SHOULD populate a canonical equivalent.
                /// Tracing instrumentations that do so, MUST also set `http.request.method_original` to the original value.
                public var method: SpanAttributeKey<MethodEnum> { .init(name: OTelAttribute.http.request.method) }

                public struct MethodEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                    public let rawValue: String
                    public init(rawValue: String) {
                        self.rawValue = rawValue
                    }
                    /// `CONNECT`: CONNECT method.
                    public static let connect = Self.init(rawValue: "CONNECT")
                    /// `DELETE`: DELETE method.
                    public static let delete = Self.init(rawValue: "DELETE")
                    /// `GET`: GET method.
                    public static let get = Self.init(rawValue: "GET")
                    /// `HEAD`: HEAD method.
                    public static let head = Self.init(rawValue: "HEAD")
                    /// `OPTIONS`: OPTIONS method.
                    public static let options = Self.init(rawValue: "OPTIONS")
                    /// `PATCH`: PATCH method.
                    public static let patch = Self.init(rawValue: "PATCH")
                    /// `POST`: POST method.
                    public static let post = Self.init(rawValue: "POST")
                    /// `PUT`: PUT method.
                    public static let put = Self.init(rawValue: "PUT")
                    /// `TRACE`: TRACE method.
                    public static let trace = Self.init(rawValue: "TRACE")
                    /// `_OTHER`: Any HTTP method that the instrumentation has no prior knowledge of.
                    public static let other = Self.init(rawValue: "_OTHER")
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
                    }
                }

                /// `http.request.method_original`: Original HTTP method sent by the client in the request line.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Examples:
                ///     - `GeT`
                ///     - `ACL`
                ///     - `foo`
                public var methodOriginal: SpanAttributeKey<String> {
                    .init(name: OTelAttribute.http.request.methodOriginal)
                }

                /// `http.request.resend_count`: The ordinal number of request resending attempt (for any reason, including redirects).
                ///
                /// - Stability: stable
                /// - Type: int
                /// - Example: `3`
                ///
                /// The resend count SHOULD be updated each time an HTTP request gets resent by the client, regardless of what was the cause of the resending (e.g. redirection, authorization failure, 503 Server Unavailable, network issues, or any other).
                public var resendCount: SpanAttributeKey<Int> { .init(name: OTelAttribute.http.request.resendCount) }

                #if Experimental
                /// `http.request.size` **UNSTABLE**: The total size of the request in bytes. This should be the total number of bytes sent over the wire, including the request line (HTTP/1.1), framing (HTTP/2 and HTTP/3), headers, and request body if any.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `1437`
                public var size: SpanAttributeKey<Int> { .init(name: OTelAttribute.http.request.size) }
                #endif
            }

            #if Experimental
            /// `http.request.body` namespace
            public var body: BodyAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct BodyAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `http.request.body.size` **UNSTABLE**: The size of the request payload body in bytes. This is the number of bytes transferred excluding headers and is often, but not always, present as the [Content-Length](https://www.rfc-editor.org/rfc/rfc9110.html#field.content-length) header. For requests using transport encoding, this should be the compressed size.
                    ///
                    /// - Stability: development
                    /// - Type: int
                    /// - Example: `3495`
                    public var size: SpanAttributeKey<Int> { .init(name: OTelAttribute.http.request.body.size) }
                }
            }
            #endif
        }

        /// `http.response` namespace
        public var response: ResponseAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ResponseAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            /// `http.response.header`: HTTP response headers, `<key>` being the normalized HTTP Header name (lowercase), the value being the header values.
            ///
            /// - Stability: stable
            /// - Type: templateStringArray
            ///
            /// Instrumentations SHOULD require an explicit configuration of which headers are to be captured.
            /// Including all response headers can be a security risk - explicit configuration helps avoid leaking sensitive information.
            ///
            /// Users MAY explicitly configure instrumentations to capture them even though it is not recommended.
            ///
            /// The attribute value MUST consist of either multiple header values as an array of strings
            /// or a single-item array containing a possibly comma-concatenated string, depending on the way
            /// the HTTP library provides access to headers.
            ///
            /// Examples:
            ///
            /// - A header `Content-Type: application/json` header SHOULD be recorded as the `http.request.response.content-type`
            ///   attribute with value `["application/json"]`.
            /// - A header `My-custom-header: abc, def` header SHOULD be recorded as the `http.response.header.my-custom-header`
            ///   attribute with value `["abc", "def"]` or `["abc, def"]` depending on the HTTP library.
            public var header: HeaderAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct HeaderAttributes {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: [String]) {
                    let attributeID = self.attributeID(forKey: key)
                    self.attributes[attributeID] = value
                }

                private func attributeID(forKey key: String) -> String {
                    var attributeID = "http.response.header."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeID.append("_")
                        } else {
                            attributeID.append(character.lowercased())
                        }
                    }

                    return attributeID
                }
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                #if Experimental
                /// `http.response.size` **UNSTABLE**: The total size of the response in bytes. This should be the total number of bytes sent over the wire, including the status line (HTTP/1.1), framing (HTTP/2 and HTTP/3), headers, and response body and trailers if any.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `1437`
                public var size: SpanAttributeKey<Int> { .init(name: OTelAttribute.http.response.size) }
                #endif

                /// `http.response.status_code`: [HTTP response status code](https://tools.ietf.org/html/rfc7231#section-6).
                ///
                /// - Stability: stable
                /// - Type: int
                /// - Example: `200`
                public var statusCode: SpanAttributeKey<Int> { .init(name: OTelAttribute.http.response.statusCode) }
            }

            #if Experimental
            /// `http.response.body` namespace
            public var body: BodyAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct BodyAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `http.response.body.size` **UNSTABLE**: The size of the response payload body in bytes. This is the number of bytes transferred excluding headers and is often, but not always, present as the [Content-Length](https://www.rfc-editor.org/rfc/rfc9110.html#field.content-length) header. For requests using transport encoding, this should be the compressed size.
                    ///
                    /// - Stability: development
                    /// - Type: int
                    /// - Example: `3495`
                    public var size: SpanAttributeKey<Int> { .init(name: OTelAttribute.http.response.body.size) }
                }
            }
            #endif
        }
    }
}

#endif
