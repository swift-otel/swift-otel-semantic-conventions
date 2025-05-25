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
    /// `telemetry` namespace
    public enum telemetry {
        /// `telemetry.sdk` namespace
        public enum sdk {
            /// `telemetry.sdk.language`: The language of the telemetry SDK.
            ///
            /// - Stability: stable
            ///
            /// - Type: enum
            ///     - `cpp`
            ///     - `dotnet`
            ///     - `erlang`
            ///     - `go`
            ///     - `java`
            ///     - `nodejs`
            ///     - `php`
            ///     - `python`
            ///     - `ruby`
            ///     - `rust`
            ///     - `swift`
            ///     - `webjs`
            public static let language = "telemetry.sdk.language"

            /// `telemetry.sdk.name`: The name of the telemetry SDK as defined above.
            ///
            /// - Stability: stable
            ///
            /// - Type: string
            ///
            /// The OpenTelemetry SDK MUST set the `telemetry.sdk.name` attribute to `opentelemetry`.
            /// If another SDK, like a fork or a vendor-provided implementation, is used, this SDK MUST set the
            /// `telemetry.sdk.name` attribute to the fully-qualified class or module name of this SDK's main entry point
            /// or another suitable identifier depending on the language.
            /// The identifier `opentelemetry` is reserved and MUST NOT be used in this case.
            /// All custom identifiers SHOULD be stable across different versions of an implementation.
            ///
            /// - Example: `opentelemetry`
            public static let name = "telemetry.sdk.name"

            /// `telemetry.sdk.version`: The version string of the telemetry SDK.
            ///
            /// - Stability: stable
            ///
            /// - Type: string
            ///
            /// - Example: `1.2.3`
            public static let version = "telemetry.sdk.version"
        }
    }
}
