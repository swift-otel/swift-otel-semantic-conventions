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
    /// `enduser` namespace
    public enum enduser {
        /// `enduser.id`: Unique identifier of an end user in the system. It maybe a username, email address, or other identifier.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `username`
        ///
        /// Unique identifier of an end user in the system.
        ///
        /// > [!Warning]
        /// > This field contains sensitive (PII) information.
        public static let id = "enduser.id"

        /// `enduser.role`: Deprecated, use `user.roles` instead.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `admin`
        @available(*, deprecated, renamed: "OTelAttribute.user.roles")
        public static let role = "enduser.role"

        /// `enduser.scope`: Deprecated, no replacement at this time.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `read:message, write:files`
        @available(*, deprecated, message: "Obsoleted: Removed, no replacement at this time.")
        public static let scope = "enduser.scope"

        /// `enduser.pseudo` namespace
        public enum pseudo {
            /// `enduser.pseudo.id`: Pseudonymous identifier of an end user. This identifier should be a random value that is not directly linked or associated with the end user's actual identity.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `QdH5CAWJgqVT4rOr0qtumf`
            ///
            /// Pseudonymous identifier of an end user.
            ///
            /// > [!Warning]
            /// > This field contains sensitive (linkable PII) information.
            public static let id = "enduser.pseudo.id"
        }
    }
    #endif
}
