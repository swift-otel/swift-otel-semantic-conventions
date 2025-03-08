// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
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
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `http.client_ip`: Deprecated, use `client.address` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `83.164.160.102`
            @available(*, deprecated, message: "Replaced by `client.address`.")
            public var clientIp: Self.Key<String> { .init(name: OTelAttribute.http.clientIp) }
    
            /// `http.flavor`: Deprecated, use `network.protocol.name` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `1.0`: HTTP/1.0
            ///     - `1.1`: HTTP/1.1
            ///     - `2.0`: HTTP/2
            ///     - `3.0`: HTTP/3
            ///     - `SPDY`: SPDY protocol.
            ///     - `QUIC`: QUIC protocol.
            @available(*, deprecated, message: "Replaced by `network.protocol.name`.")
            public var flavor: Self.Key<FlavorEnum> { .init(name: OTelAttribute.http.flavor) }
            
            public struct FlavorEnum: SpanAttributeConvertible {
                private let rawValue: String
                /// `1.0`: HTTP/1.0
                public static let http10 = Self.init(rawValue: "1.0")
                /// `1.1`: HTTP/1.1
                public static let http11 = Self.init(rawValue: "1.1")
                /// `2.0`: HTTP/2
                public static let http20 = Self.init(rawValue: "2.0")
                /// `3.0`: HTTP/3
                public static let http30 = Self.init(rawValue: "3.0")
                /// `SPDY`: SPDY protocol.
                public static let spdy = Self.init(rawValue: "SPDY")
                /// `QUIC`: QUIC protocol.
                public static let quic = Self.init(rawValue: "QUIC")
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(self.rawValue)
                }
            }
    
            /// `http.host`: Deprecated, use one of `server.address`, `client.address` or `http.request.header.host` instead, depending on the usage.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `www.example.org`
            @available(*, deprecated, message: "Replaced by one of `server.address`, `client.address` or `http.request.header.host`, depending on the usage.")
            public var host: Self.Key<String> { .init(name: OTelAttribute.http.host) }
    
            /// `http.method`: Deprecated, use `http.request.method` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `GET`
            ///     - `POST`
            ///     - `HEAD`
            @available(*, deprecated, message: "Replaced by `http.request.method`.")
            public var method: Self.Key<String> { .init(name: OTelAttribute.http.method) }
    
            /// `http.request_content_length`: Deprecated, use `http.request.header.<key>` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            /// 
            /// - Example: `3495`
            @available(*, deprecated, message: "Replaced by `http.request.header.<key>`.")
            public var requestContentLength: Self.Key<Int> { .init(name: OTelAttribute.http.requestContentLength) }
    
            /// `http.request_content_length_uncompressed`: Deprecated, use `http.request.body.size` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            /// 
            /// - Example: `5493`
            @available(*, deprecated, message: "Replaced by `http.request.body.size`.")
            public var requestContentLengthUncompressed: Self.Key<Int> { .init(name: OTelAttribute.http.requestContentLengthUncompressed) }
    
            /// `http.response_content_length`: Deprecated, use `http.response.header.<key>` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            /// 
            /// - Example: `3495`
            @available(*, deprecated, message: "Replaced by `http.response.header.<key>`.")
            public var responseContentLength: Self.Key<Int> { .init(name: OTelAttribute.http.responseContentLength) }
    
            /// `http.response_content_length_uncompressed`: Deprecated, use `http.response.body.size` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            /// 
            /// - Example: `5493`
            @available(*, deprecated, message: "Replace by `http.response.body.size`.")
            public var responseContentLengthUncompressed: Self.Key<Int> { .init(name: OTelAttribute.http.responseContentLengthUncompressed) }
    
            /// `http.route`: The matched route, that is, the path template in the format used by the respective server framework. 
            /// 
            /// - Stability: stable
            /// 
            /// - Type: string
            /// 
            /// MUST NOT be populated when this is not supported by the HTTP server framework as the route attribute should have low-cardinality and the URI path can NOT substitute it. SHOULD include the [application root](/docs/http/http-spans.md#http-server-definitions) if there is one. 
            /// 
            /// - Examples:
            ///     - `/users/:userID?`
            ///     - `{controller}/{action}/{id?}`
            public var route: Self.Key<String> { .init(name: OTelAttribute.http.route) }
    
            /// `http.scheme`: Deprecated, use `url.scheme` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `http`
            ///     - `https`
            @available(*, deprecated, message: "Replaced by `url.scheme` instead.")
            public var scheme: Self.Key<String> { .init(name: OTelAttribute.http.scheme) }
    
            /// `http.server_name`: Deprecated, use `server.address` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `example.com`
            @available(*, deprecated, message: "Replaced by `server.address`.")
            public var serverName: Self.Key<String> { .init(name: OTelAttribute.http.serverName) }
    
            /// `http.status_code`: Deprecated, use `http.response.status_code` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            /// 
            /// - Example: `200`
            @available(*, deprecated, message: "Replaced by `http.response.status_code`.")
            public var statusCode: Self.Key<Int> { .init(name: OTelAttribute.http.statusCode) }
    
            /// `http.target`: Deprecated, use `url.path` and `url.query` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `/search?q=OpenTelemetry#SemConv`
            @available(*, deprecated, message: "Split to `url.path` and `url.query.")
            public var target: Self.Key<String> { .init(name: OTelAttribute.http.target) }
    
            /// `http.url`: Deprecated, use `url.full` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `https://www.foo.bar/search?q=OpenTelemetry#SemConv`
            @available(*, deprecated, message: "Replaced by `url.full`.")
            public var url: Self.Key<String> { .init(name: OTelAttribute.http.url) }
    
            /// `http.user_agent`: Deprecated, use `user_agent.original` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `CERN-LineMode/2.15 libwww/2.17b3`
            ///     - `Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1`
            @available(*, deprecated, message: "Replaced by `user_agent.original`.")
            public var userAgent: Self.Key<String> { .init(name: OTelAttribute.http.userAgent) }
        }
    
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
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `http.connection.state`: State of the HTTP connection in the HTTP connection pool.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `active`: active state.
                ///     - `idle`: idle state.
                /// 
                /// - Examples:
                ///     - `active`
                ///     - `idle`
                public var state: Self.Key<StateEnum> { .init(name: OTelAttribute.http.connection.state) }
                
                public struct StateEnum: SpanAttributeConvertible {
                    private let rawValue: String
                    /// `active`: active state.
                    public static let active = Self.init(rawValue: "active")
                    /// `idle`: idle state.
                    public static let idle = Self.init(rawValue: "idle")
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
        
        }
    
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
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
            /// `http.request.header`: HTTP request headers, `<key>` being the normalized HTTP Header name (lowercase), the value being the header values. 
            /// 
            /// - Stability: stable
            /// 
            /// - Type: templateStringArray
            /// 
            /// Instrumentations SHOULD require an explicit configuration of which headers are to be captured. Including all request headers can be a security risk - explicit configuration helps avoid leaking sensitive information. The `User-Agent` header is already captured in the `user_agent.original` attribute. Users MAY explicitly configure instrumentations to capture them even though it is not recommended. The attribute value MUST consist of either multiple header values as an array of strings or a single-item array containing a possibly comma-concatenated string, depending on the way the HTTP library provides access to headers. 
            /// 
            /// - Examples:
            ///     - `http.request.header.content-type=["application/json"]`
            ///     - `http.request.header.x-forwarded-for=["1.2.3.4", "1.2.3.5"]`
            public var header: HeaderAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            public struct HeaderAttributes {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public mutating func set(_ key: String, to value: [String]) {
                    let attributeId = self.attributeId(forKey: key)
                    self.attributes[attributeId] = value
                }
            
                private func attributeId(forKey key: String) -> String {
                    var attributeId = "http.request.header."
            
                    for index in key.indices {
                        let character = key[index]
            
                        if character == "-" {
                            attributeId.append("_")
                        } else {
                            attributeId.append(character.lowercased())
                        }
                    }
            
                    return attributeId
                }
            }
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `http.request.method`: HTTP request method.
                /// 
                /// - Stability: stable
                /// 
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
                /// 
                /// HTTP request method value SHOULD be "known" to the instrumentation. By default, this convention defines "known" methods as the ones listed in [RFC9110](https://www.rfc-editor.org/rfc/rfc9110.html#name-methods) and the PATCH method defined in [RFC5789](https://www.rfc-editor.org/rfc/rfc5789.html).  If the HTTP request method is not known to instrumentation, it MUST set the `http.request.method` attribute to `_OTHER`.  If the HTTP instrumentation could end up converting valid HTTP request methods to `_OTHER`, then it MUST provide a way to override the list of known HTTP methods. If this override is done via environment variable, then the environment variable MUST be named OTEL_INSTRUMENTATION_HTTP_KNOWN_METHODS and support a comma-separated list of case-sensitive known HTTP methods (this list MUST be a full override of the default known method, it is not a list of known methods in addition to the defaults).  HTTP method names are case-sensitive and `http.request.method` attribute value MUST match a known HTTP method name exactly. Instrumentations for specific web frameworks that consider HTTP methods to be case insensitive, SHOULD populate a canonical equivalent. Tracing instrumentations that do so, MUST also set `http.request.method_original` to the original value. 
                /// 
                /// - Examples:
                ///     - `GET`
                ///     - `POST`
                ///     - `HEAD`
                public var method: Self.Key<MethodEnum> { .init(name: OTelAttribute.http.request.method) }
                
                public struct MethodEnum: SpanAttributeConvertible {
                    private let rawValue: String
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
                        return .string(self.rawValue)
                    }
                }
        
                /// `http.request.method_original`: Original HTTP method sent by the client in the request line.
                /// 
                /// - Stability: stable
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `GeT`
                ///     - `ACL`
                ///     - `foo`
                public var methodOriginal: Self.Key<String> { .init(name: OTelAttribute.http.request.methodOriginal) }
        
                /// `http.request.resend_count`: The ordinal number of request resending attempt (for any reason, including redirects). 
                /// 
                /// - Stability: stable
                /// 
                /// - Type: int
                /// 
                /// The resend count SHOULD be updated each time an HTTP request gets resent by the client, regardless of what was the cause of the resending (e.g. redirection, authorization failure, 503 Server Unavailable, network issues, or any other). 
                /// 
                /// - Example: `3`
                public var resendCount: Self.Key<Int> { .init(name: OTelAttribute.http.request.resendCount) }
        
                /// `http.request.size`: The total size of the request in bytes. This should be the total number of bytes sent over the wire, including the request line (HTTP/1.1), framing (HTTP/2 and HTTP/3), headers, and request body if any. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `1437`
                public var size: Self.Key<Int> { .init(name: OTelAttribute.http.request.size) }
            }
        
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
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `http.request.body.size`: The size of the request payload body in bytes. This is the number of bytes transferred excluding headers and is often, but not always, present as the [Content-Length](https://www.rfc-editor.org/rfc/rfc9110.html#field.content-length) header. For requests using transport encoding, this should be the compressed size. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: int
                    /// 
                    /// - Example: `3495`
                    public var size: Self.Key<Int> { .init(name: OTelAttribute.http.request.body.size) }
                }
            
            
            }
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
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
            /// `http.response.header`: HTTP response headers, `<key>` being the normalized HTTP Header name (lowercase), the value being the header values. 
            /// 
            /// - Stability: stable
            /// 
            /// - Type: templateStringArray
            /// 
            /// Instrumentations SHOULD require an explicit configuration of which headers are to be captured. Including all response headers can be a security risk - explicit configuration helps avoid leaking sensitive information. Users MAY explicitly configure instrumentations to capture them even though it is not recommended. The attribute value MUST consist of either multiple header values as an array of strings or a single-item array containing a possibly comma-concatenated string, depending on the way the HTTP library provides access to headers. 
            /// 
            /// - Examples:
            ///     - `http.response.header.content-type=["application/json"]`
            ///     - `http.response.header.my-custom-header=["abc", "def"]`
            public var header: HeaderAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            public struct HeaderAttributes {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public mutating func set(_ key: String, to value: [String]) {
                    let attributeId = self.attributeId(forKey: key)
                    self.attributes[attributeId] = value
                }
            
                private func attributeId(forKey key: String) -> String {
                    var attributeId = "http.response.header."
            
                    for index in key.indices {
                        let character = key[index]
            
                        if character == "-" {
                            attributeId.append("_")
                        } else {
                            attributeId.append(character.lowercased())
                        }
                    }
            
                    return attributeId
                }
            }
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `http.response.size`: The total size of the response in bytes. This should be the total number of bytes sent over the wire, including the status line (HTTP/1.1), framing (HTTP/2 and HTTP/3), headers, and response body and trailers if any. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `1437`
                public var size: Self.Key<Int> { .init(name: OTelAttribute.http.response.size) }
        
                /// `http.response.status_code`: [HTTP response status code](https://tools.ietf.org/html/rfc7231#section-6).
                /// 
                /// - Stability: stable
                /// 
                /// - Type: int
                /// 
                /// - Example: `200`
                public var statusCode: Self.Key<Int> { .init(name: OTelAttribute.http.response.statusCode) }
            }
        
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
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `http.response.body.size`: The size of the response payload body in bytes. This is the number of bytes transferred excluding headers and is often, but not always, present as the [Content-Length](https://www.rfc-editor.org/rfc/rfc9110.html#field.content-length) header. For requests using transport encoding, this should be the compressed size. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: int
                    /// 
                    /// - Example: `3495`
                    public var size: Self.Key<Int> { .init(name: OTelAttribute.http.response.body.size) }
                }
            
            
            }
        }
    }
}