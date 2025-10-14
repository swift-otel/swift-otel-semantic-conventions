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
    /// `openai` namespace
    public enum openai {
        /// `openai.request` namespace
        public enum request {
            /// `openai.request.service_tier` **UNSTABLE**: The service tier requested. May be a specific tier, default, or auto.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `auto`: The system will utilize scale tier credits until they are exhausted.
            ///     - `default`: The system will utilize the default scale tier.
            /// - Examples:
            ///     - `auto`
            ///     - `default`
            public static let serviceTier = "openai.request.service_tier"
        }

        /// `openai.response` namespace
        public enum response {
            /// `openai.response.service_tier` **UNSTABLE**: The service tier used for the response.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `scale`
            ///     - `default`
            public static let serviceTier = "openai.response.service_tier"

            /// `openai.response.system_fingerprint` **UNSTABLE**: A fingerprint to track any eventual change in the Generative AI environment.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `fp_44709d6fcb`
            public static let systemFingerprint = "openai.response.system_fingerprint"
        }
    }
    #endif
}
