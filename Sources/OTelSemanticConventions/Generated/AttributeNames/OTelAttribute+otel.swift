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
    /// `otel` namespace
    public enum otel {
        /// `otel.status_code`: Name of the code, either "OK" or "ERROR". MUST NOT be set if the status code is UNSET.
        ///
        /// - Stability: stable
        /// - Type: enum
        ///     - `OK`: The operation has been validated by an Application developer or Operator to have completed successfully.
        ///     - `ERROR`: The operation contains an error.
        public static let statusCode = "otel.status_code"

        /// `otel.status_description`: Description of the Status if it has a value, otherwise not set.
        ///
        /// - Stability: stable
        /// - Type: string
        /// - Example: `resource not found`
        public static let statusDescription = "otel.status_description"

        /// `otel.scope` namespace
        public enum scope {
            /// `otel.scope.name`: The name of the instrumentation scope - (`InstrumentationScope.Name` in OTLP).
            ///
            /// - Stability: stable
            /// - Type: string
            /// - Example: `io.opentelemetry.contrib.mongodb`
            public static let name = "otel.scope.name"

            /// `otel.scope.version`: The version of the instrumentation scope - (`InstrumentationScope.Version` in OTLP).
            ///
            /// - Stability: stable
            /// - Type: string
            /// - Example: `1.0.0`
            public static let version = "otel.scope.version"
        }
    }
}
