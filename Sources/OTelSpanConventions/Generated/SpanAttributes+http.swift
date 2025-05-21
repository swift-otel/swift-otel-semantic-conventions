// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelSemanticConventions
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

                public struct MethodEnum: SpanAttributeConvertible, Sendable {
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
                        .string(self.rawValue)
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
                /// `http.response.status_code`: [HTTP response status code](https://tools.ietf.org/html/rfc7231#section-6).
                ///
                /// - Stability: stable
                ///
                /// - Type: int
                ///
                /// - Example: `200`
                public var statusCode: Self.Key<Int> { .init(name: OTelAttribute.http.response.statusCode) }
            }

        }
    }
}
