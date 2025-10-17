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
    /// `dns` namespace
    public var dns: DnsAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct DnsAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `dns.answers` **UNSTABLE**: The list of IPv4 or IPv6 addresses resolved during DNS lookup.
            ///
            /// - Stability: development
            /// - Type: stringArray
            public var answers: SpanAttributeKey<[String]> { .init(name: OTelAttribute.dns.answers) }
        }

        /// `dns.question` namespace
        public var question: QuestionAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct QuestionAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `dns.question.name` **UNSTABLE**: The name being queried.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `www.example.com`
                ///     - `opentelemetry.io`
                ///
                /// If the name field contains non-printable characters (below 32 or above 126), those characters should be represented as escaped base 10 integers (\DDD). Back slashes and quotes should be escaped. Tabs, carriage returns, and line feeds should be converted to \t, \r, and \n respectively.
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.dns.question.name) }
            }
        }
    }
    #endif
}

#endif
