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
    /// `dns` namespace
    public enum dns {
        /// `dns.answers` **UNSTABLE**: The list of IPv4 or IPv6 addresses resolved during DNS lookup.
        ///
        /// - Stability: development
        /// - Type: stringArray
        public static let answers = "dns.answers"

        /// `dns.question` namespace
        public enum question {
            /// `dns.question.name` **UNSTABLE**: The name being queried.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `www.example.com`
            ///     - `opentelemetry.io`
            ///
            /// The name represents the queried domain name as it appears in the DNS query without any additional normalization.
            public static let name = "dns.question.name"
        }
    }
    #endif
}
