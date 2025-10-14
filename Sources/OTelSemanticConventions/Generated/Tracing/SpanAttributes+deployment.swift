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
    /// `deployment` namespace
    public var deployment: DeploymentAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct DeploymentAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `deployment.environment` **UNSTABLE**: Deprecated, use `deployment.environment.name` instead.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `staging`
            ///     - `production`
            @available(*, deprecated, renamed: "SpanAttributes.deployment.environment.name")
            public var _environment: SpanAttributeKey<String> { .init(name: OTelAttribute.deployment._environment) }

            /// `deployment.id` **UNSTABLE**: The id of the deployment.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `1208`
            public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.deployment.id) }

            /// `deployment.name` **UNSTABLE**: The name of the deployment.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `deploy my app`
            ///     - `deploy-frontend`
            public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.deployment.name) }

            /// `deployment.status` **UNSTABLE**: The status of the deployment.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `failed`: failed
            ///     - `succeeded`: succeeded
            public var status: SpanAttributeKey<StatusEnum> { .init(name: OTelAttribute.deployment.status) }

            public struct StatusEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                public let rawValue: String
                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    .string(self.rawValue)
                }
            }
        }

        /// `deployment.environment` namespace
        public var environment: EnvironmentAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct EnvironmentAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `deployment.environment.name` **UNSTABLE**: Name of the [deployment environment](https://wikipedia.org/wiki/Deployment_environment) (aka deployment tier).
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `staging`
                ///     - `production`
                ///
                /// `deployment.environment.name` does not affect the uniqueness constraints defined through
                /// the `service.namespace`, `service.name` and `service.instance.id` resource attributes.
                /// This implies that resources carrying the following attribute combinations MUST be
                /// considered to be identifying the same service:
                ///
                /// - `service.name=frontend`, `deployment.environment.name=production`
                /// - `service.name=frontend`, `deployment.environment.name=staging`.
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.deployment.environment.name) }
            }
        }
    }
    #endif
}

#endif
