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
    /// `service` namespace
    public enum service {
        /// `service.name`: Logical name of the service.
        ///
        /// - Stability: stable
        /// - Type: string
        /// - Example: `shoppingcart`
        ///
        /// MUST be the same for all instances of horizontally scaled services. If the value was not specified, SDKs MUST fallback to `unknown_service:` concatenated with [`process.executable.name`](process.md), e.g. `unknown_service:bash`. If `process.executable.name` is not available, the value MUST be set to `unknown_service`.
        public static let name = "service.name"

        /// `service.version`: The version string of the service API or implementation. The format is not defined by these conventions.
        ///
        /// - Stability: stable
        /// - Type: string
        /// - Examples:
        ///     - `2.0.0`
        ///     - `a01dbef8a`
        public static let version = "service.version"
    }
}
