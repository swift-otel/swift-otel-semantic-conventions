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
    /// `user_agent` namespace
    public enum userAgent {
        /// `user_agent.original`: Value of the [HTTP User-Agent](https://www.rfc-editor.org/rfc/rfc9110.html#field.user-agent) header sent by the client.
        ///
        /// - Stability: stable
        /// - Type: string
        /// - Examples:
        ///     - `CERN-LineMode/2.15 libwww/2.17b3`
        ///     - `Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1`
        ///     - `YourApp/1.0.0 grpc-java-okhttp/1.27.2`
        public static let original = "user_agent.original"
    }
}
