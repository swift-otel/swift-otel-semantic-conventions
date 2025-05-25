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
    /// `client` namespace
    public enum client {
        /// `client.address`: Client address - domain name if available without reverse DNS lookup; otherwise, IP address or Unix domain socket name.
        ///
        /// - Stability: stable
        /// - Type: string
        /// - Examples:
        ///     - `client.example.com`
        ///     - `10.1.2.80`
        ///     - `/tmp/my.sock`
        ///
        /// When observed from the server side, and when communicating through an intermediary, `client.address` SHOULD represent the client address behind any intermediaries,  for example proxies, if it's available.
        public static let address = "client.address"

        /// `client.port`: Client port number.
        ///
        /// - Stability: stable
        /// - Type: int
        /// - Example: `65123`
        ///
        /// When observed from the server side, and when communicating through an intermediary, `client.port` SHOULD represent the client port behind any intermediaries,  for example proxies, if it's available.
        public static let port = "client.port"
    }
}
