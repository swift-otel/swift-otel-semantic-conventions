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

extension OTelAttribute {
    #if Experimental
    /// `security_rule` namespace
    public enum securityRule {
        /// `security_rule.category` **UNSTABLE**: A categorization value keyword used by the entity using the rule for detection of this event
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `Attempted Information Leak`
        public static let category = "security_rule.category"

        /// `security_rule.description` **UNSTABLE**: The description of the rule generating the event.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `Block requests to public DNS over HTTPS / TLS protocols`
        public static let description = "security_rule.description"

        /// `security_rule.license` **UNSTABLE**: Name of the license under which the rule used to generate this event is made available.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `Apache 2.0`
        public static let license = "security_rule.license"

        /// `security_rule.name` **UNSTABLE**: The name of the rule or signature generating the event.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `BLOCK_DNS_over_TLS`
        public static let name = "security_rule.name"

        /// `security_rule.reference` **UNSTABLE**: Reference URL to additional information about the rule used to generate this event.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `https://en.wikipedia.org/wiki/DNS_over_TLS`
        ///
        /// The URL can point to the vendor’s documentation about the rule. If that’s not available, it can also be a link to a more general page describing this type of alert.
        public static let reference = "security_rule.reference"

        /// `security_rule.uuid` **UNSTABLE**: A rule ID that is unique within the scope of a set or group of agents, observers, or other entities using the rule for detection of this event.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Examples:
        ///     - `550e8400-e29b-41d4-a716-446655440000`
        ///     - `1100110011`
        public static let uuid = "security_rule.uuid"

        /// `security_rule.version` **UNSTABLE**: The version / revision of the rule being used for analysis.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `1.0.0`
        public static let version = "security_rule.version"

        /// `security_rule.ruleset` namespace
        public enum ruleset {
            /// `security_rule.ruleset.name` **UNSTABLE**: Name of the ruleset, policy, group, or parent category in which the rule used to generate this event is a member.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `Standard_Protocol_Filters`
            public static let name = "security_rule.ruleset.name"
        }
    }
    #endif
}
