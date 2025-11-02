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
    /// `feature_flag` namespace
    public var featureFlag: FeatureFlagAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct FeatureFlagAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `feature_flag.key` **UNSTABLE**: The lookup key of the feature flag.
            ///
            /// - Stability: releaseCandidate
            /// - Type: string
            /// - Example: `logo-color`
            public var key: SpanAttributeKey<String> { .init(name: OTelAttribute.featureFlag.key) }

            /// `feature_flag.provider_name` **UNSTABLE**: Deprecated, use `feature_flag.provider.name` instead.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `Flag Manager`
            @available(*, deprecated, renamed: "SpanAttributes.featureFlag.provider.name")
            public var providerName: SpanAttributeKey<String> { .init(name: OTelAttribute.featureFlag.providerName) }

            /// `feature_flag.variant` **UNSTABLE**: Deprecated, use `feature_flag.result.variant` instead.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `red`
            ///     - `true`
            ///     - `on`
            @available(*, deprecated, renamed: "SpanAttributes.featureFlag.result.variant")
            public var variant: SpanAttributeKey<String> { .init(name: OTelAttribute.featureFlag.variant) }

            /// `feature_flag.version` **UNSTABLE**: The version of the ruleset used during the evaluation. This may be any stable value which uniquely identifies the ruleset.
            ///
            /// - Stability: releaseCandidate
            /// - Type: string
            /// - Examples:
            ///     - `1`
            ///     - `01ABCDEF`
            public var version: SpanAttributeKey<String> { .init(name: OTelAttribute.featureFlag.version) }
        }

        /// `feature_flag.context` namespace
        public var context: ContextAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ContextAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `feature_flag.context.id` **UNSTABLE**: The unique identifier for the flag evaluation context. For example, the targeting key.
                ///
                /// - Stability: releaseCandidate
                /// - Type: string
                /// - Example: `5157782b-2203-4c80-a857-dbbd5e7761db`
                public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.featureFlag.context.id) }
            }
        }

        /// `feature_flag.evaluation` namespace
        public var evaluation: EvaluationAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct EvaluationAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `feature_flag.evaluation.reason` **UNSTABLE**: Deprecated, use `feature_flag.result.reason` instead.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `static`: The resolved value is static (no dynamic evaluation).
                ///     - `default`: The resolved value fell back to a pre-configured value (no dynamic evaluation occurred or dynamic evaluation yielded no result).
                ///     - `targeting_match`: The resolved value was the result of a dynamic evaluation, such as a rule or specific user-targeting.
                ///     - `split`: The resolved value was the result of pseudorandom assignment.
                ///     - `cached`: The resolved value was retrieved from cache.
                ///     - `disabled`: The resolved value was the result of the flag being disabled in the management system.
                ///     - `unknown`: The reason for the resolved value could not be determined.
                ///     - `stale`: The resolved value is non-authoritative or possibly out of date
                ///     - `error`: The resolved value was the result of an error.
                /// - Examples:
                ///     - `static`
                ///     - `targeting_match`
                ///     - `error`
                ///     - `default`
                @available(*, deprecated, renamed: "SpanAttributes.featureFlag.result.reason")
                public var reason: SpanAttributeKey<ReasonEnum> {
                    .init(name: OTelAttribute.featureFlag.evaluation.reason)
                }

                public struct ReasonEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                    public let rawValue: String
                    public init(rawValue: String) {
                        self.rawValue = rawValue
                    }
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
                    }
                }
            }

            /// `feature_flag.evaluation.error` namespace
            public var error: ErrorAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct ErrorAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `feature_flag.evaluation.error.message` **UNSTABLE**: Deprecated, use `error.message` instead.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `Flag `header-color` expected type `string` but found type `number``
                    @available(*, deprecated, renamed: "SpanAttributes.error.message")
                    public var message: SpanAttributeKey<String> {
                        .init(name: OTelAttribute.featureFlag.evaluation.error.message)
                    }
                }
            }
        }

        /// `feature_flag.provider` namespace
        public var provider: ProviderAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ProviderAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `feature_flag.provider.name` **UNSTABLE**: Identifies the feature flag provider.
                ///
                /// - Stability: releaseCandidate
                /// - Type: string
                /// - Example: `Flag Manager`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.featureFlag.provider.name) }
            }
        }

        /// `feature_flag.result` namespace
        public var result: ResultAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ResultAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `feature_flag.result.reason` **UNSTABLE**: The reason code which shows how a feature flag value was determined.
                ///
                /// - Stability: releaseCandidate
                /// - Type: enum
                ///     - `static`: The resolved value is static (no dynamic evaluation).
                ///     - `default`: The resolved value fell back to a pre-configured value (no dynamic evaluation occurred or dynamic evaluation yielded no result).
                ///     - `targeting_match`: The resolved value was the result of a dynamic evaluation, such as a rule or specific user-targeting.
                ///     - `split`: The resolved value was the result of pseudorandom assignment.
                ///     - `cached`: The resolved value was retrieved from cache.
                ///     - `disabled`: The resolved value was the result of the flag being disabled in the management system.
                ///     - `unknown`: The reason for the resolved value could not be determined.
                ///     - `stale`: The resolved value is non-authoritative or possibly out of date
                ///     - `error`: The resolved value was the result of an error.
                /// - Examples:
                ///     - `static`
                ///     - `targeting_match`
                ///     - `error`
                ///     - `default`
                public var reason: SpanAttributeKey<ReasonEnum> { .init(name: OTelAttribute.featureFlag.result.reason) }

                public struct ReasonEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                    public let rawValue: String
                    public init(rawValue: String) {
                        self.rawValue = rawValue
                    }
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
                    }
                }

                /// `feature_flag.result.value` **UNSTABLE**: The evaluated value of the feature flag.
                ///
                /// - Stability: releaseCandidate
                /// - Type: any
                /// - Examples:
                ///     - `#ff0000`
                ///     - `true`
                ///     - `3`
                ///
                /// With some feature flag providers, feature flag results can be quite large or contain private or sensitive details.
                /// Because of this, `feature_flag.result.variant` is often the preferred attribute if it is available.
                ///
                /// It may be desirable to redact or otherwise limit the size and scope of `feature_flag.result.value` if possible.
                /// Because the evaluated flag value is unstructured and may be any type, it is left to the instrumentation author to determine how best to achieve this.
                public var value: SpanAttributeKey<SpanAttribute> {
                    .init(name: OTelAttribute.featureFlag.result.value)
                }

                /// `feature_flag.result.variant` **UNSTABLE**: A semantic identifier for an evaluated flag value.
                ///
                /// - Stability: releaseCandidate
                /// - Type: string
                /// - Examples:
                ///     - `red`
                ///     - `true`
                ///     - `on`
                ///
                /// A semantic identifier, commonly referred to as a variant, provides a means
                /// for referring to a value without including the value itself. This can
                /// provide additional context for understanding the meaning behind a value.
                /// For example, the variant `red` maybe be used for the value `#c05543`.
                public var variant: SpanAttributeKey<String> { .init(name: OTelAttribute.featureFlag.result.variant) }
            }
        }

        /// `feature_flag.set` namespace
        public var set: SetAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct SetAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `feature_flag.set.id` **UNSTABLE**: The identifier of the [flag set](https://openfeature.dev/specification/glossary/#flag-set) to which the feature flag belongs.
                ///
                /// - Stability: releaseCandidate
                /// - Type: string
                /// - Examples:
                ///     - `proj-1`
                ///     - `ab98sgs`
                ///     - `service1/dev`
                public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.featureFlag.set.id) }
            }
        }
    }
    #endif
}

#endif
