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
    /// `jsonrpc` namespace
    public enum jsonrpc {
        /// `jsonrpc.protocol` namespace
        public enum `protocol` {
            /// `jsonrpc.protocol.version` **UNSTABLE**: Protocol version, as specified in the `jsonrpc` property of the request and its corresponding response.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `2.0`
            ///     - `1.0`
            public static let version = "jsonrpc.protocol.version"
        }

        /// `jsonrpc.request` namespace
        public enum request {
            /// `jsonrpc.request.id` **UNSTABLE**: A string representation of the `id` property of the request and its corresponding response.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `10`
            ///     - `request-7`
            ///
            /// Under the [JSON-RPC specification](https://www.jsonrpc.org/specification), the `id` property may be a string, number, null, or omitted entirely. When omitted, the request is treated as a notification. Using `null` is not equivalent to omitting the `id`, but it is discouraged.
            /// Instrumentations SHOULD NOT capture this attribute when the `id` is `null` or omitted.
            public static let id = "jsonrpc.request.id"
        }
    }
    #endif
}
