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
    /// `openai` namespace
    public var openai: OpenaiAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct OpenaiAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
        }

        /// `openai.request` namespace
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

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `openai.request.service_tier` **UNSTABLE**: The service tier requested. May be a specific tier, default, or auto.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `auto`: The system will utilize scale tier credits until they are exhausted.
                ///     - `default`: The system will utilize the default scale tier.
                /// - Examples:
                ///     - `auto`
                ///     - `default`
                public var serviceTier: SpanAttributeKey<ServiceTierEnum> {
                    .init(name: OTelAttribute.openai.request.serviceTier)
                }

                public struct ServiceTierEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
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

        /// `openai.response` namespace
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

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `openai.response.service_tier` **UNSTABLE**: The service tier used for the response.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `scale`
                ///     - `default`
                public var serviceTier: SpanAttributeKey<String> {
                    .init(name: OTelAttribute.openai.response.serviceTier)
                }

                /// `openai.response.system_fingerprint` **UNSTABLE**: A fingerprint to track any eventual change in the Generative AI environment.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `fp_44709d6fcb`
                public var systemFingerprint: SpanAttributeKey<String> {
                    .init(name: OTelAttribute.openai.response.systemFingerprint)
                }
            }
        }
    }
    #endif
}

#endif
