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
    /// `security_rule` namespace
    public var securityRule: SecurityRuleAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct SecurityRuleAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `security_rule.category`: A categorization value keyword used by the entity using the rule for detection of this event
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `Attempted Information Leak`
            public var category: SpanAttributeKey<String> { .init(name: OTelAttribute.securityRule.category) }

            /// `security_rule.description`: The description of the rule generating the event.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `Block requests to public DNS over HTTPS / TLS protocols`
            public var description: SpanAttributeKey<String> { .init(name: OTelAttribute.securityRule.description) }

            /// `security_rule.license`: Name of the license under which the rule used to generate this event is made available.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `Apache 2.0`
            public var license: SpanAttributeKey<String> { .init(name: OTelAttribute.securityRule.license) }

            /// `security_rule.name`: The name of the rule or signature generating the event.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `BLOCK_DNS_over_TLS`
            public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.securityRule.name) }

            /// `security_rule.reference`: Reference URL to additional information about the rule used to generate this event.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `https://en.wikipedia.org/wiki/DNS_over_TLS`
            ///
            /// The URL can point to the vendor’s documentation about the rule. If that’s not available, it can also be a link to a more general page describing this type of alert.
            public var reference: SpanAttributeKey<String> { .init(name: OTelAttribute.securityRule.reference) }

            /// `security_rule.uuid`: A rule ID that is unique within the scope of a set or group of agents, observers, or other entities using the rule for detection of this event.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `550e8400-e29b-41d4-a716-446655440000`
            ///     - `1100110011`
            public var uuid: SpanAttributeKey<String> { .init(name: OTelAttribute.securityRule.uuid) }

            /// `security_rule.version`: The version / revision of the rule being used for analysis.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `1.0.0`
            public var version: SpanAttributeKey<String> { .init(name: OTelAttribute.securityRule.version) }
        }

        /// `security_rule.ruleset` namespace
        public var ruleset: RulesetAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct RulesetAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `security_rule.ruleset.name`: Name of the ruleset, policy, group, or parent category in which the rule used to generate this event is a member.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `Standard_Protocol_Filters`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.securityRule.ruleset.name) }
            }
        }
    }
    #endif
}

#endif
