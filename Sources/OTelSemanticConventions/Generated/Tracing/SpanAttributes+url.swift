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
    /// `url` namespace
    public var url: UrlAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct UrlAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes

        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `url.fragment`: The [URI fragment](https://www.rfc-editor.org/rfc/rfc3986#section-3.5) component
            ///
            /// - Stability: stable
            /// - Type: string
            /// - Example: `SemConv`
            public var fragment: SpanAttributeKey<String> { .init(name: OTelAttribute.url.fragment) }

            /// `url.full`: Absolute URL describing a network resource according to [RFC3986](https://www.rfc-editor.org/rfc/rfc3986)
            ///
            /// - Stability: stable
            /// - Type: string
            /// - Examples:
            ///     - `https://www.foo.bar/search?q=OpenTelemetry#SemConv`
            ///     - `//localhost`
            ///
            /// For network calls, URL usually has `scheme://host[:port][path][?query][#fragment]` format, where the fragment
            /// is not transmitted over HTTP, but if it is known, it SHOULD be included nevertheless.
            ///
            /// `url.full` MUST NOT contain credentials passed via URL in form of `https://username:password@www.example.com/`.
            /// In such case username and password SHOULD be redacted and attribute's value SHOULD be `https://REDACTED:REDACTED@www.example.com/`.
            ///
            /// `url.full` SHOULD capture the absolute URL when it is available (or can be reconstructed).
            ///
            /// Sensitive content provided in `url.full` SHOULD be scrubbed when instrumentations can identify it.
            ///
            /// ![Development](https://img.shields.io/badge/-development-blue)
            /// Query string values for the following keys SHOULD be redacted by default and replaced by the
            /// value `REDACTED`:
            ///
            /// * [`AWSAccessKeyId`](https://docs.aws.amazon.com/AmazonS3/latest/userguide/RESTAuthentication.html#RESTAuthenticationQueryStringAuth)
            /// * [`Signature`](https://docs.aws.amazon.com/AmazonS3/latest/userguide/RESTAuthentication.html#RESTAuthenticationQueryStringAuth)
            /// * [`sig`](https://learn.microsoft.com/azure/storage/common/storage-sas-overview#sas-token)
            /// * [`X-Goog-Signature`](https://cloud.google.com/storage/docs/access-control/signed-urls)
            ///
            /// This list is subject to change over time.
            ///
            /// When a query string value is redacted, the query string key SHOULD still be preserved, e.g.
            /// `https://www.example.com/path?color=blue&sig=REDACTED`.
            public var full: SpanAttributeKey<String> { .init(name: OTelAttribute.url.full) }

            /// `url.path`: The [URI path](https://www.rfc-editor.org/rfc/rfc3986#section-3.3) component
            ///
            /// - Stability: stable
            /// - Type: string
            /// - Example: `/search`
            ///
            /// Sensitive content provided in `url.path` SHOULD be scrubbed when instrumentations can identify it.
            public var path: SpanAttributeKey<String> { .init(name: OTelAttribute.url.path) }

            /// `url.query`: The [URI query](https://www.rfc-editor.org/rfc/rfc3986#section-3.4) component
            ///
            /// - Stability: stable
            /// - Type: string
            /// - Example: `q=OpenTelemetry`
            ///
            /// Sensitive content provided in `url.query` SHOULD be scrubbed when instrumentations can identify it.
            ///
            /// ![Development](https://img.shields.io/badge/-development-blue)
            /// Query string values for the following keys SHOULD be redacted by default and replaced by the value `REDACTED`:
            ///
            /// * [`AWSAccessKeyId`](https://docs.aws.amazon.com/AmazonS3/latest/userguide/RESTAuthentication.html#RESTAuthenticationQueryStringAuth)
            /// * [`Signature`](https://docs.aws.amazon.com/AmazonS3/latest/userguide/RESTAuthentication.html#RESTAuthenticationQueryStringAuth)
            /// * [`sig`](https://learn.microsoft.com/azure/storage/common/storage-sas-overview#sas-token)
            /// * [`X-Goog-Signature`](https://cloud.google.com/storage/docs/access-control/signed-urls)
            ///
            /// This list is subject to change over time.
            ///
            /// When a query string value is redacted, the query string key SHOULD still be preserved, e.g.
            /// `q=OpenTelemetry&sig=REDACTED`.
            public var query: SpanAttributeKey<String> { .init(name: OTelAttribute.url.query) }

            /// `url.scheme`: The [URI scheme](https://www.rfc-editor.org/rfc/rfc3986#section-3.1) component identifying the used protocol.
            ///
            /// - Stability: stable
            /// - Type: string
            /// - Examples:
            ///     - `https`
            ///     - `ftp`
            ///     - `telnet`
            public var scheme: SpanAttributeKey<String> { .init(name: OTelAttribute.url.scheme) }
        }
    }
}

#endif
