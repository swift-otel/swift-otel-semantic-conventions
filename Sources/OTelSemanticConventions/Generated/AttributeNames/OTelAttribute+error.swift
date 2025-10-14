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
    /// `error` namespace
    public enum error {
        #if Experimental
        /// `error.message` **UNSTABLE**: A message providing more detail about an error in human-readable form.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Examples:
        ///     - `Unexpected input type: string`
        ///     - `The user has exceeded their storage quota`
        ///
        /// `error.message` should provide additional context and detail about an error.
        /// It is NOT RECOMMENDED to duplicate the value of `error.type` in `error.message`.
        /// It is also NOT RECOMMENDED to duplicate the value of `exception.message` in `error.message`.
        ///
        /// `error.message` is NOT RECOMMENDED for metrics or spans due to its unbounded cardinality and overlap with span status.
        public static let message = "error.message"
        #endif

        /// `error.type`: Describes a class of error the operation ended with.
        ///
        /// - Stability: stable
        /// - Type: enum
        ///     - `_OTHER`: A fallback error value to be used when the instrumentation doesn't define a custom value.
        /// - Examples:
        ///     - `timeout`
        ///     - `java.net.UnknownHostException`
        ///     - `server_certificate_invalid`
        ///     - `500`
        ///
        /// The `error.type` SHOULD be predictable, and SHOULD have low cardinality.
        ///
        /// When `error.type` is set to a type (e.g., an exception type), its
        /// canonical class name identifying the type within the artifact SHOULD be used.
        ///
        /// Instrumentations SHOULD document the list of errors they report.
        ///
        /// The cardinality of `error.type` within one instrumentation library SHOULD be low.
        /// Telemetry consumers that aggregate data from multiple instrumentation libraries and applications
        /// should be prepared for `error.type` to have high cardinality at query time when no
        /// additional filters are applied.
        ///
        /// If the operation has completed successfully, instrumentations SHOULD NOT set `error.type`.
        ///
        /// If a specific domain defines its own set of error identifiers (such as HTTP or gRPC status codes),
        /// it's RECOMMENDED to:
        ///
        /// - Use a domain-specific attribute
        /// - Set `error.type` to capture all errors, regardless of whether they are defined within the domain-specific set or not.
        public static let `type` = "error.type"
    }
}
