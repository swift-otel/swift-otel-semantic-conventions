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
    /// `az` namespace
    public enum az {
        /// `az.namespace` **UNSTABLE**: Deprecated, use `azure.resource_provider.namespace` instead.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Examples:
        ///     - `Microsoft.Storage`
        ///     - `Microsoft.KeyVault`
        ///     - `Microsoft.ServiceBus`
        @available(*, deprecated, renamed: "OTelAttribute.azure.resourceProvider.namespace")
        public static let namespace = "az.namespace"

        /// `az.service_request_id` **UNSTABLE**: Deprecated, use `azure.service.request.id` instead.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `00000000-0000-0000-0000-000000000000`
        @available(*, deprecated, renamed: "OTelAttribute.azure.service.request.id")
        public static let serviceRequestId = "az.service_request_id"
    }
    #endif
}
