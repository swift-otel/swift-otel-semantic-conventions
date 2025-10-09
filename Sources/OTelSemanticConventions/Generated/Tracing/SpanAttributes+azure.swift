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
    #if Experimental
    /// `azure` namespace
    public var azure: AzureAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct AzureAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
        }

        /// `azure.client` namespace
        public var client: ClientAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ClientAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `azure.client.id`: The unique identifier of the client instance.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `3ba4827d-4422-483f-b59f-85b74211c11d`
                ///     - `storage-client-1`
                public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.azure.client.id) }
            }
        }

        /// `azure.cosmosdb` namespace
        public var cosmosdb: CosmosdbAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct CosmosdbAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
            }

            /// `azure.cosmosdb.connection` namespace
            public var connection: ConnectionAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct ConnectionAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `azure.cosmosdb.connection.mode`: Cosmos client connection mode.
                    ///
                    /// - Stability: development
                    /// - Type: enum
                    ///     - `gateway`: Gateway (HTTP) connection.
                    ///     - `direct`: Direct connection.
                    public var mode: SpanAttributeKey<ModeEnum> {
                        .init(name: OTelAttribute.azure.cosmosdb.connection.mode)
                    }

                    public struct ModeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                        public let rawValue: String
                        public init(rawValue: String) {
                            self.rawValue = rawValue
                        }
                        public func toSpanAttribute() -> Tracing.SpanAttribute {
                            .string(self.rawValue)
                        }
                    }
                }
            }

            /// `azure.cosmosdb.consistency` namespace
            public var consistency: ConsistencyAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct ConsistencyAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `azure.cosmosdb.consistency.level`: Account or request [consistency level](https://learn.microsoft.com/azure/cosmos-db/consistency-levels).
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
                    public var level: SpanAttributeKey<LevelEnum> {
                        .init(name: OTelAttribute.azure.cosmosdb.consistency.level)
                    }

                    public struct LevelEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                        public let rawValue: String
                        public init(rawValue: String) {
                            self.rawValue = rawValue
                        }
                        public func toSpanAttribute() -> Tracing.SpanAttribute {
                            .string(self.rawValue)
                        }
                    }
                }
            }

            /// `azure.cosmosdb.operation` namespace
            public var operation: OperationAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct OperationAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `azure.cosmosdb.operation.contacted_regions`: List of regions contacted during operation in the order that they were contacted. If there is more than one region listed, it indicates that the operation was performed on multiple regions i.e. cross-regional call.
                    ///
                    /// - Stability: development
                    /// - Type: stringArray
                    ///
                    /// Region name matches the format of `displayName` in [Azure Location API](https://learn.microsoft.com/rest/api/subscription/subscriptions/list-locations?view=rest-subscription-2021-10-01&tabs=HTTP#location)
                    public var contactedRegions: SpanAttributeKey<[String]> {
                        .init(name: OTelAttribute.azure.cosmosdb.operation.contactedRegions)
                    }

                    /// `azure.cosmosdb.operation.request_charge`: The number of request units consumed by the operation.
                    ///
                    /// - Stability: development
                    /// - Type: double
                    /// - Examples:
                    ///     - `46.18`
                    ///     - `1.0`
                    public var requestCharge: SpanAttributeKey<Double> {
                        .init(name: OTelAttribute.azure.cosmosdb.operation.requestCharge)
                    }
                }
            }

            /// `azure.cosmosdb.request` namespace
            public var request: RequestAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct RequestAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                }

                /// `azure.cosmosdb.request.body` namespace
                public var body: BodyAttributes {
                    get {
                        .init(attributes: self.attributes)
                    }
                    set {
                        self.attributes = newValue.attributes
                    }
                }

                @dynamicMemberLookup
                public struct BodyAttributes: SpanAttributeNamespace {
                    public var attributes: Tracing.SpanAttributes

                    public init(attributes: Tracing.SpanAttributes) {
                        self.attributes = attributes
                    }

                    public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                        public init() {}

                        /// `azure.cosmosdb.request.body.size`: Request payload size in bytes.
                        ///
                        /// - Stability: development
                        /// - Type: int
                        public var size: SpanAttributeKey<Int> {
                            .init(name: OTelAttribute.azure.cosmosdb.request.body.size)
                        }
                    }
                }
            }

            /// `azure.cosmosdb.response` namespace
            public var response: ResponseAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct ResponseAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `azure.cosmosdb.response.sub_status_code`: Cosmos DB sub status code.
                    ///
                    /// - Stability: development
                    /// - Type: int
                    /// - Examples:
                    ///     - `1000`
                    ///     - `1002`
                    public var subStatusCode: SpanAttributeKey<Int> {
                        .init(name: OTelAttribute.azure.cosmosdb.response.subStatusCode)
                    }
                }
            }
        }

        /// `azure.resource_provider` namespace
        public var resourceProvider: ResourceProviderAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ResourceProviderAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `azure.resource_provider.namespace`: [Azure Resource Provider Namespace](https://learn.microsoft.com/azure/azure-resource-manager/management/azure-services-resource-providers) as recognized by the client.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `Microsoft.Storage`
                ///     - `Microsoft.KeyVault`
                ///     - `Microsoft.ServiceBus`
                public var namespace: SpanAttributeKey<String> {
                    .init(name: OTelAttribute.azure.resourceProvider.namespace)
                }
            }
        }

        /// `azure.service` namespace
        public var service: ServiceAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ServiceAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
            }

            /// `azure.service.request` namespace
            public var request: RequestAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct RequestAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `azure.service.request.id`: The unique identifier of the service request. It's generated by the Azure service and returned with the response.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `00000000-0000-0000-0000-000000000000`
                    public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.azure.service.request.id) }
                }
            }
        }
    }
    #endif
}

#endif
