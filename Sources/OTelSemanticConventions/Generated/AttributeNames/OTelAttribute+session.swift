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
    /// `session` namespace
    public enum session {
        /// `session.id` **UNSTABLE**: A unique id to identify a session.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `00112233-4455-6677-8899-aabbccddeeff`
        public static let id = "session.id"

        /// `session.previous_id` **UNSTABLE**: The previous `session.id` for this user, when known.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `00112233-4455-6677-8899-aabbccddeeff`
        public static let previousId = "session.previous_id"
    }
    #endif
}
