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
    /// `user` namespace
    public var user: UserAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct UserAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `user.email`: User email address.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `a.einstein@example.com`
            public var email: SpanAttributeKey<String> { .init(name: OTelAttribute.user.email) }

            /// `user.full_name`: User's full name
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `Albert Einstein`
            public var fullName: SpanAttributeKey<String> { .init(name: OTelAttribute.user.fullName) }

            /// `user.hash`: Unique user hash to correlate information for a user in anonymized form.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `364fc68eaf4c8acec74a4e52d7d1feaa`
            ///
            /// Useful if `user.id` or `user.name` contain confidential information and cannot be used.
            public var hash: SpanAttributeKey<String> { .init(name: OTelAttribute.user.hash) }

            /// `user.id`: Unique identifier of the user.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `S-1-5-21-202424912787-2692429404-2351956786-1000`
            public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.user.id) }

            /// `user.name`: Short name or login/username of the user.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `a.einstein`
            public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.user.name) }

            /// `user.roles`: Array of user roles at the time of the event.
            ///
            /// - Stability: development
            /// - Type: stringArray
            public var roles: SpanAttributeKey<[String]> { .init(name: OTelAttribute.user.roles) }
        }
    }
    #endif
}

#endif
