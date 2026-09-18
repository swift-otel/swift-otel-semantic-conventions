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
        /// `openai.api` namespace
        public enum api {
            /// `openai.api.type` **UNSTABLE**: The type of OpenAI API being used.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `chat_completions`: The OpenAI [Chat Completions API](https://developers.openai.com/api/reference/chat-completions/overview).
            ///     - `responses`: The OpenAI [Responses API](https://developers.openai.com/api/reference/responses/overview).
            @available(
                *,
                deprecated,
                message:
                    "Moved to the [OpenTelemetry GenAI semantic conventions repository](https://github.com/open-telemetry/semantic-conventions-genai)."
            )
            public static let `type` = "openai.api.type"
        }

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
            @available(
                *,
                deprecated,
                message:
                    "Moved to the [OpenTelemetry GenAI semantic conventions repository](https://github.com/open-telemetry/semantic-conventions-genai)."
            )
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
            @available(
                *,
                deprecated,
                message:
                    "Moved to the [OpenTelemetry GenAI semantic conventions repository](https://github.com/open-telemetry/semantic-conventions-genai)."
            )
            public static let serviceTier = "openai.response.service_tier"

            /// `openai.response.system_fingerprint` **UNSTABLE**: A fingerprint to track any eventual change in the Generative AI environment.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `fp_44709d6fcb`
            @available(
                *,
                deprecated,
                message:
                    "Moved to the [OpenTelemetry GenAI semantic conventions repository](https://github.com/open-telemetry/semantic-conventions-genai)."
            )
            public static let systemFingerprint = "openai.response.system_fingerprint"
        }
    }
    #endif
}
