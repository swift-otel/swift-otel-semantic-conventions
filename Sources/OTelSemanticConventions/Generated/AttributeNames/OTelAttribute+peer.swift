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
    /// `peer` namespace
    public enum peer {
        /// `peer.service` **UNSTABLE**: The [`service.name`](/docs/resource/README.md#service) of the remote service. SHOULD be equal to the actual `service.name` resource attribute of the remote service if any.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `AuthTokenCache`
        ///
        /// Examples of `peer.service` that users may specify:
        ///
        /// - A Redis cache of auth tokens as `peer.service="AuthTokenCache"`.
        /// - A gRPC service `rpc.service="io.opentelemetry.AuthService"` may be hosted in both a gateway, `peer.service="ExternalApiService"` and a backend, `peer.service="AuthService"`.
        public static let service = "peer.service"
    }
    #endif
}
