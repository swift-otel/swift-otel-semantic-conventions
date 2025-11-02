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
    /// `azure` namespace
    public enum azure {
        /// `azure.client` namespace
        public enum client {
            /// `azure.client.id` **UNSTABLE**: The unique identifier of the client instance.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `3ba4827d-4422-483f-b59f-85b74211c11d`
            ///     - `storage-client-1`
            public static let id = "azure.client.id"
        }

        /// `azure.cosmosdb` namespace
        public enum cosmosdb {
            /// `azure.cosmosdb.connection` namespace
            public enum connection {
                /// `azure.cosmosdb.connection.mode` **UNSTABLE**: Cosmos client connection mode.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `gateway`: Gateway (HTTP) connection.
                ///     - `direct`: Direct connection.
                public static let mode = "azure.cosmosdb.connection.mode"
            }

            /// `azure.cosmosdb.consistency` namespace
            public enum consistency {
                /// `azure.cosmosdb.consistency.level` **UNSTABLE**: Account or request [consistency level](https://learn.microsoft.com/azure/cosmos-db/consistency-levels).
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `Strong`: Strong
                ///     - `BoundedStaleness`: Bounded Staleness
                ///     - `Session`: Session
                ///     - `Eventual`: Eventual
                ///     - `ConsistentPrefix`: Consistent Prefix
                /// - Examples:
                ///     - `Eventual`
                ///     - `ConsistentPrefix`
                ///     - `BoundedStaleness`
                ///     - `Strong`
                ///     - `Session`
                public static let level = "azure.cosmosdb.consistency.level"
            }

            /// `azure.cosmosdb.operation` namespace
            public enum operation {
                /// `azure.cosmosdb.operation.contacted_regions` **UNSTABLE**: List of regions contacted during operation in the order that they were contacted. If there is more than one region listed, it indicates that the operation was performed on multiple regions i.e. cross-regional call.
                ///
                /// - Stability: development
                /// - Type: stringArray
                ///
                /// Region name matches the format of `displayName` in [Azure Location API](https://learn.microsoft.com/rest/api/resources/subscriptions/list-locations)
                public static let contactedRegions = "azure.cosmosdb.operation.contacted_regions"

                /// `azure.cosmosdb.operation.request_charge` **UNSTABLE**: The number of request units consumed by the operation.
                ///
                /// - Stability: development
                /// - Type: double
                /// - Examples:
                ///     - `46.18`
                ///     - `1.0`
                public static let requestCharge = "azure.cosmosdb.operation.request_charge"
            }

            /// `azure.cosmosdb.request` namespace
            public enum request {
                /// `azure.cosmosdb.request.body` namespace
                public enum body {
                    /// `azure.cosmosdb.request.body.size` **UNSTABLE**: Request payload size in bytes.
                    ///
                    /// - Stability: development
                    /// - Type: int
                    public static let size = "azure.cosmosdb.request.body.size"
                }
            }

            /// `azure.cosmosdb.response` namespace
            public enum response {
                /// `azure.cosmosdb.response.sub_status_code` **UNSTABLE**: Cosmos DB sub status code.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Examples:
                ///     - `1000`
                ///     - `1002`
                public static let subStatusCode = "azure.cosmosdb.response.sub_status_code"
            }
        }

        /// `azure.resource_provider` namespace
        public enum resourceProvider {
            /// `azure.resource_provider.namespace` **UNSTABLE**: [Azure Resource Provider Namespace](https://learn.microsoft.com/azure/azure-resource-manager/management/azure-services-resource-providers) as recognized by the client.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `Microsoft.Storage`
            ///     - `Microsoft.KeyVault`
            ///     - `Microsoft.ServiceBus`
            public static let namespace = "azure.resource_provider.namespace"
        }

        /// `azure.service` namespace
        public enum service {
            /// `azure.service.request` namespace
            public enum request {
                /// `azure.service.request.id` **UNSTABLE**: The unique identifier of the service request. It's generated by the Azure service and returned with the response.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `00000000-0000-0000-0000-000000000000`
                public static let id = "azure.service.request.id"
            }
        }
    }
    #endif
}
