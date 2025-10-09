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
    /// `destination` namespace
    public enum destination {
        /// `destination.address`: Destination address - domain name if available without reverse DNS lookup; otherwise, IP address or Unix domain socket name.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Examples:
        ///     - `destination.example.com`
        ///     - `10.1.2.80`
        ///     - `/tmp/my.sock`
        ///
        /// When observed from the source side, and when communicating through an intermediary, `destination.address` SHOULD represent the destination address behind any intermediaries, for example proxies, if it's available.
        public static let address = "destination.address"

        /// `destination.port`: Destination port number
        ///
        /// - Stability: development
        /// - Type: int
        /// - Examples:
        ///     - `3389`
        ///     - `2888`
        public static let port = "destination.port"
    }
    #endif
}
