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

#if Tracing

import Tracing

extension SpanAttributes {
    /// `server` namespace
    public var server: ServerAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct ServerAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes

        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `server.address`: Server domain name if available without reverse DNS lookup; otherwise, IP address or Unix domain socket name.
            ///
            /// - Stability: stable
            /// - Type: string
            /// - Examples:
            ///     - `example.com`
            ///     - `10.1.2.80`
            ///     - `/tmp/my.sock`
            ///
            /// When observed from the client side, and when communicating through an intermediary, `server.address` SHOULD represent the server address behind any intermediaries, for example proxies, if it's available.
            public var address: SpanAttributeKey<String> { .init(name: OTelAttribute.server.address) }

            /// `server.port`: Server port number.
            ///
            /// - Stability: stable
            /// - Type: int
            /// - Examples:
            ///     - `80`
            ///     - `8080`
            ///     - `443`
            ///
            /// When observed from the client side, and when communicating through an intermediary, `server.port` SHOULD represent the server port behind any intermediaries, for example proxies, if it's available.
            public var port: SpanAttributeKey<Int> { .init(name: OTelAttribute.server.port) }
        }
    }
}

#endif
