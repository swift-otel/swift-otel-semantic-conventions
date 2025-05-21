// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

extension OTelAttribute {
    /// `http` namespace
    public enum http {
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
        public static let route = "http.route"

        /// `http.request` namespace
        public enum request {
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
            public static let header = "http.request.header"

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
            public static let method = "http.request.method"

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
            public static let methodOriginal = "http.request.method_original"

            /// `http.request.resend_count`: The ordinal number of request resending attempt (for any reason, including redirects).
            ///
            /// - Stability: stable
            ///
            /// - Type: int
            ///
            /// The resend count SHOULD be updated each time an HTTP request gets resent by the client, regardless of what was the cause of the resending (e.g. redirection, authorization failure, 503 Server Unavailable, network issues, or any other).
            ///
            /// - Example: `3`
            public static let resendCount = "http.request.resend_count"
        }

        /// `http.response` namespace
        public enum response {
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
            public static let header = "http.response.header"

            /// `http.response.status_code`: [HTTP response status code](https://tools.ietf.org/html/rfc7231#section-6).
            ///
            /// - Stability: stable
            ///
            /// - Type: int
            ///
            /// - Example: `200`
            public static let statusCode = "http.response.status_code"
        }
    }
}
