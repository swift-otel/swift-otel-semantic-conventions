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
    /// `cassandra` namespace
    public var cassandra: CassandraAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct CassandraAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
        }

        /// `cassandra.consistency` namespace
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

                /// `cassandra.consistency.level` **UNSTABLE**: The consistency level of the query. Based on consistency values from [CQL](https://docs.datastax.com/en/cassandra-oss/3.0/cassandra/dml/dmlConfigConsistency.html).
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `all`: All
                ///     - `each_quorum`: Each Quorum
                ///     - `quorum`: Quorum
                ///     - `local_quorum`: Local Quorum
                ///     - `one`: One
                ///     - `two`: Two
                ///     - `three`: Three
                ///     - `local_one`: Local One
                ///     - `any`: Any
                ///     - `serial`: Serial
                ///     - `local_serial`: Local Serial
                public var level: SpanAttributeKey<LevelEnum> { .init(name: OTelAttribute.cassandra.consistency.level) }

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

        /// `cassandra.coordinator` namespace
        public var coordinator: CoordinatorAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct CoordinatorAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `cassandra.coordinator.dc` **UNSTABLE**: The data center of the coordinating node for a query.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `us-west-2`
                public var dc: SpanAttributeKey<String> { .init(name: OTelAttribute.cassandra.coordinator.dc) }

                /// `cassandra.coordinator.id` **UNSTABLE**: The ID of the coordinating node for a query.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `be13faa2-8574-4d71-926d-27f16cf8a7af`
                public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.cassandra.coordinator.id) }
            }
        }

        /// `cassandra.page` namespace
        public var page: PageAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct PageAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `cassandra.page.size` **UNSTABLE**: The fetch size used for paging, i.e. how many rows will be returned at once.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `5000`
                public var size: SpanAttributeKey<Int> { .init(name: OTelAttribute.cassandra.page.size) }
            }
        }

        /// `cassandra.query` namespace
        public var query: QueryAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct QueryAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `cassandra.query.idempotent` **UNSTABLE**: Whether or not the query is idempotent.
                ///
                /// - Stability: development
                /// - Type: boolean
                public var idempotent: SpanAttributeKey<Bool> { .init(name: OTelAttribute.cassandra.query.idempotent) }
            }
        }

        /// `cassandra.speculative_execution` namespace
        public var speculativeExecution: SpeculativeExecutionAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct SpeculativeExecutionAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `cassandra.speculative_execution.count` **UNSTABLE**: The number of times a query was speculatively executed. Not set or `0` if the query was not executed speculatively.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Examples:
                ///     - `0`
                ///     - `2`
                public var count: SpanAttributeKey<Int> {
                    .init(name: OTelAttribute.cassandra.speculativeExecution.count)
                }
            }
        }
    }
    #endif
}

#endif
