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
    /// `user` namespace
    public enum user {
        /// `user.email`: User email address.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `a.einstein@example.com`
        public static let email = "user.email"

        /// `user.full_name`: User's full name
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `Albert Einstein`
        public static let fullName = "user.full_name"

        /// `user.hash`: Unique user hash to correlate information for a user in anonymized form.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `364fc68eaf4c8acec74a4e52d7d1feaa`
        ///
        /// Useful if `user.id` or `user.name` contain confidential information and cannot be used.
        public static let hash = "user.hash"

        /// `user.id`: Unique identifier of the user.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `S-1-5-21-202424912787-2692429404-2351956786-1000`
        public static let id = "user.id"

        /// `user.name`: Short name or login/username of the user.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `a.einstein`
        public static let name = "user.name"

        /// `user.roles`: Array of user roles at the time of the event.
        ///
        /// - Stability: development
        /// - Type: stringArray
        public static let roles = "user.roles"
    }
    #endif
}
