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
    /// `db` namespace
    public var db: DbAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct DbAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            #if Experimental
            /// `db.connection_string` **UNSTABLE**: Deprecated, use `server.address`, `server.port` attributes instead.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `Server=(localdb)\v11.0;Integrated Security=true;`
            @available(*, deprecated, message: "Replaced by `server.address` and `server.port`.")
            public var connectionString: SpanAttributeKey<String> { .init(name: OTelAttribute.db.connectionString) }
            #endif

            #if Experimental
            /// `db.name` **UNSTABLE**: Deprecated, use `db.namespace` instead.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `customers`
            ///     - `main`
            @available(*, deprecated, renamed: "SpanAttributes.db.namespace")
            public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.db.name) }
            #endif

            /// `db.namespace`: The name of the database, fully qualified within the server address and port.
            ///
            /// - Stability: stable
            /// - Type: string
            /// - Examples:
            ///     - `customers`
            ///     - `test.users`
            ///
            /// If a database system has multiple namespace components, they SHOULD be concatenated from the most general to the most specific namespace component, using `|` as a separator between the components. Any missing components (and their associated separators) SHOULD be omitted.
            /// Semantic conventions for individual database systems SHOULD document what `db.namespace` means in the context of that system.
            /// It is RECOMMENDED to capture the value as provided by the application without attempting to do any case normalization.
            public var namespace: SpanAttributeKey<String> { .init(name: OTelAttribute.db.namespace) }

            #if Experimental
            /// `db.operation` **UNSTABLE**: Deprecated, use `db.operation.name` instead.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `findAndModify`
            ///     - `HMSET`
            ///     - `SELECT`
            @available(*, deprecated, renamed: "SpanAttributes.db.operation.name")
            public var _operation: SpanAttributeKey<String> { .init(name: OTelAttribute.db._operation) }
            #endif

            #if Experimental
            /// `db.statement` **UNSTABLE**: The database statement being executed.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `SELECT * FROM wuser_table`
            ///     - `SET mykey "WuValue"`
            @available(*, deprecated, renamed: "SpanAttributes.db.query.text")
            public var statement: SpanAttributeKey<String> { .init(name: OTelAttribute.db.statement) }
            #endif

            #if Experimental
            /// `db.system` **UNSTABLE**: Deprecated, use `db.system.name` instead.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `other_sql`: Some other SQL database. Fallback only. See notes.
            ///     - `adabas`: Adabas (Adaptable Database System)
            ///     - `cache`: Deprecated, use `intersystems_cache` instead.
            ///     - `intersystems_cache`: InterSystems Caché
            ///     - `cassandra`: Apache Cassandra
            ///     - `clickhouse`: ClickHouse
            ///     - `cloudscape`: Deprecated, use `other_sql` instead.
            ///     - `cockroachdb`: CockroachDB
            ///     - `coldfusion`: Deprecated, no replacement at this time.
            ///     - `cosmosdb`: Microsoft Azure Cosmos DB
            ///     - `couchbase`: Couchbase
            ///     - `couchdb`: CouchDB
            ///     - `db2`: IBM Db2
            ///     - `derby`: Apache Derby
            ///     - `dynamodb`: Amazon DynamoDB
            ///     - `edb`: EnterpriseDB
            ///     - `elasticsearch`: Elasticsearch
            ///     - `filemaker`: FileMaker
            ///     - `firebird`: Firebird
            ///     - `firstsql`: Deprecated, use `other_sql` instead.
            ///     - `geode`: Apache Geode
            ///     - `h2`: H2
            ///     - `hanadb`: SAP HANA
            ///     - `hbase`: Apache HBase
            ///     - `hive`: Apache Hive
            ///     - `hsqldb`: HyperSQL DataBase
            ///     - `influxdb`: InfluxDB
            ///     - `informix`: Informix
            ///     - `ingres`: Ingres
            ///     - `instantdb`: InstantDB
            ///     - `interbase`: InterBase
            ///     - `mariadb`: MariaDB
            ///     - `maxdb`: SAP MaxDB
            ///     - `memcached`: Memcached
            ///     - `mongodb`: MongoDB
            ///     - `mssql`: Microsoft SQL Server
            ///     - `mssqlcompact`: Deprecated, Microsoft SQL Server Compact is discontinued.
            ///     - `mysql`: MySQL
            ///     - `neo4j`: Neo4j
            ///     - `netezza`: Netezza
            ///     - `opensearch`: OpenSearch
            ///     - `oracle`: Oracle Database
            ///     - `pervasive`: Pervasive PSQL
            ///     - `pointbase`: PointBase
            ///     - `postgresql`: PostgreSQL
            ///     - `progress`: Progress Database
            ///     - `redis`: Redis
            ///     - `redshift`: Amazon Redshift
            ///     - `spanner`: Cloud Spanner
            ///     - `sqlite`: SQLite
            ///     - `sybase`: Sybase
            ///     - `teradata`: Teradata
            ///     - `trino`: Trino
            ///     - `vertica`: Vertica
            @available(*, deprecated, renamed: "SpanAttributes.db.system.name")
            public var _system: SpanAttributeKey<SystemEnum> { .init(name: OTelAttribute.db._system) }

            public struct SystemEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                public let rawValue: String
                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    .string(self.rawValue)
                }
            }
            #endif

            #if Experimental
            /// `db.user` **UNSTABLE**: Deprecated, no replacement at this time.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `readonly_user`
            ///     - `reporting_user`
            @available(*, deprecated, message: "Obsoleted: Removed, no replacement at this time.")
            public var user: SpanAttributeKey<String> { .init(name: OTelAttribute.db.user) }
            #endif
        }

        #if Experimental
        /// `db.cassandra` namespace
        public var cassandra: CassandraAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
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

                /// `db.cassandra.consistency_level` **UNSTABLE**: Deprecated, use `cassandra.consistency.level` instead.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `all`
                ///     - `each_quorum`
                ///     - `quorum`
                ///     - `local_quorum`
                ///     - `one`
                ///     - `two`
                ///     - `three`
                ///     - `local_one`
                ///     - `any`
                ///     - `serial`
                ///     - `local_serial`
                @available(*, deprecated, renamed: "SpanAttributes.cassandra.consistency.level")
                public var consistencyLevel: SpanAttributeKey<ConsistencyLevelEnum> {
                    .init(name: OTelAttribute.db.cassandra.consistencyLevel)
                }

                public struct ConsistencyLevelEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                    public let rawValue: String
                    public init(rawValue: String) {
                        self.rawValue = rawValue
                    }
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
                    }
                }

                /// `db.cassandra.idempotence` **UNSTABLE**: Deprecated, use `cassandra.query.idempotent` instead.
                ///
                /// - Stability: development
                /// - Type: boolean
                @available(*, deprecated, renamed: "SpanAttributes.cassandra.query.idempotent")
                public var idempotence: SpanAttributeKey<Bool> { .init(name: OTelAttribute.db.cassandra.idempotence) }

                /// `db.cassandra.page_size` **UNSTABLE**: Deprecated, use `cassandra.page.size` instead.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `5000`
                @available(*, deprecated, renamed: "SpanAttributes.cassandra.page.size")
                public var pageSize: SpanAttributeKey<Int> { .init(name: OTelAttribute.db.cassandra.pageSize) }

                /// `db.cassandra.speculative_execution_count` **UNSTABLE**: Deprecated, use `cassandra.speculative_execution.count` instead.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Examples:
                ///     - `0`
                ///     - `2`
                @available(*, deprecated, renamed: "SpanAttributes.cassandra.speculativeExecution.count")
                public var speculativeExecutionCount: SpanAttributeKey<Int> {
                    .init(name: OTelAttribute.db.cassandra.speculativeExecutionCount)
                }

                /// `db.cassandra.table` **UNSTABLE**: Deprecated, use `db.collection.name` instead.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `mytable`
                @available(*, deprecated, renamed: "SpanAttributes.db.collection.name")
                public var table: SpanAttributeKey<String> { .init(name: OTelAttribute.db.cassandra.table) }
            }

            /// `db.cassandra.coordinator` namespace
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

                    /// `db.cassandra.coordinator.dc` **UNSTABLE**: Deprecated, use `cassandra.coordinator.dc` instead.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `us-west-2`
                    @available(*, deprecated, renamed: "SpanAttributes.cassandra.coordinator.dc")
                    public var dc: SpanAttributeKey<String> { .init(name: OTelAttribute.db.cassandra.coordinator.dc) }

                    /// `db.cassandra.coordinator.id` **UNSTABLE**: Deprecated, use `cassandra.coordinator.id` instead.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `be13faa2-8574-4d71-926d-27f16cf8a7af`
                    @available(*, deprecated, renamed: "SpanAttributes.cassandra.coordinator.id")
                    public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.db.cassandra.coordinator.id) }
                }
            }
        }
        #endif

        #if Experimental
        /// `db.client` namespace
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
            }

            /// `db.client.connection` namespace
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

                    /// `db.client.connection.state` **UNSTABLE**: The state of a connection in the pool
                    ///
                    /// - Stability: development
                    /// - Type: enum
                    ///     - `idle`
                    ///     - `used`
                    /// - Example: `idle`
                    public var state: SpanAttributeKey<StateEnum> {
                        .init(name: OTelAttribute.db.client.connection.state)
                    }

                    public struct StateEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                        public let rawValue: String
                        public init(rawValue: String) {
                            self.rawValue = rawValue
                        }
                        public func toSpanAttribute() -> Tracing.SpanAttribute {
                            .string(self.rawValue)
                        }
                    }
                }

                /// `db.client.connection.pool` namespace
                public var pool: PoolAttributes {
                    get {
                        .init(attributes: self.attributes)
                    }
                    set {
                        self.attributes = newValue.attributes
                    }
                }

                @dynamicMemberLookup
                public struct PoolAttributes: SpanAttributeNamespace {
                    public var attributes: Tracing.SpanAttributes

                    public init(attributes: Tracing.SpanAttributes) {
                        self.attributes = attributes
                    }

                    public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                        public init() {}

                        /// `db.client.connection.pool.name` **UNSTABLE**: The name of the connection pool; unique within the instrumented application. In case the connection pool implementation doesn't provide a name, instrumentation SHOULD use a combination of parameters that would make the name unique, for example, combining attributes `server.address`, `server.port`, and `db.namespace`, formatted as `server.address:server.port/db.namespace`. Instrumentations that generate connection pool name following different patterns SHOULD document it.
                        ///
                        /// - Stability: development
                        /// - Type: string
                        /// - Example: `myDataSource`
                        public var name: SpanAttributeKey<String> {
                            .init(name: OTelAttribute.db.client.connection.pool.name)
                        }
                    }
                }
            }

            /// `db.client.connections` namespace
            public var connections: ConnectionsAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct ConnectionsAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `db.client.connections.state` **UNSTABLE**: Deprecated, use `db.client.connection.state` instead.
                    ///
                    /// - Stability: development
                    /// - Type: enum
                    ///     - `idle`
                    ///     - `used`
                    /// - Example: `idle`
                    @available(*, deprecated, renamed: "SpanAttributes.db.client.connection.state")
                    public var state: SpanAttributeKey<StateEnum> {
                        .init(name: OTelAttribute.db.client.connections.state)
                    }

                    public struct StateEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                        public let rawValue: String
                        public init(rawValue: String) {
                            self.rawValue = rawValue
                        }
                        public func toSpanAttribute() -> Tracing.SpanAttribute {
                            .string(self.rawValue)
                        }
                    }
                }

                /// `db.client.connections.pool` namespace
                public var pool: PoolAttributes {
                    get {
                        .init(attributes: self.attributes)
                    }
                    set {
                        self.attributes = newValue.attributes
                    }
                }

                @dynamicMemberLookup
                public struct PoolAttributes: SpanAttributeNamespace {
                    public var attributes: Tracing.SpanAttributes

                    public init(attributes: Tracing.SpanAttributes) {
                        self.attributes = attributes
                    }

                    public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                        public init() {}

                        /// `db.client.connections.pool.name` **UNSTABLE**: Deprecated, use `db.client.connection.pool.name` instead.
                        ///
                        /// - Stability: development
                        /// - Type: string
                        /// - Example: `myDataSource`
                        @available(*, deprecated, renamed: "SpanAttributes.db.client.connection.pool.name")
                        public var name: SpanAttributeKey<String> {
                            .init(name: OTelAttribute.db.client.connections.pool.name)
                        }
                    }
                }
            }
        }
        #endif

        /// `db.collection` namespace
        public var collection: CollectionAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct CollectionAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `db.collection.name`: The name of a collection (table, container) within the database.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Examples:
                ///     - `public.users`
                ///     - `customers`
                ///
                /// It is RECOMMENDED to capture the value as provided by the application
                /// without attempting to do any case normalization.
                ///
                /// The collection name SHOULD NOT be extracted from `db.query.text`,
                /// when the database system supports query text with multiple collections
                /// in non-batch operations.
                ///
                /// For batch operations, if the individual operations are known to have the same
                /// collection name then that collection name SHOULD be used.
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.db.collection.name) }
            }
        }

        #if Experimental
        /// `db.cosmosdb` namespace
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

                /// `db.cosmosdb.client_id` **UNSTABLE**: Deprecated, use `azure.client.id` instead.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `3ba4827d-4422-483f-b59f-85b74211c11d`
                @available(*, deprecated, renamed: "SpanAttributes.azure.client.id")
                public var clientId: SpanAttributeKey<String> { .init(name: OTelAttribute.db.cosmosdb.clientId) }

                /// `db.cosmosdb.connection_mode` **UNSTABLE**: Deprecated, use `azure.cosmosdb.connection.mode` instead.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `gateway`: Gateway (HTTP) connection.
                ///     - `direct`: Direct connection.
                @available(*, deprecated, renamed: "SpanAttributes.azure.cosmosdb.connection.mode")
                public var connectionMode: SpanAttributeKey<ConnectionModeEnum> {
                    .init(name: OTelAttribute.db.cosmosdb.connectionMode)
                }

                public struct ConnectionModeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                    public let rawValue: String
                    public init(rawValue: String) {
                        self.rawValue = rawValue
                    }
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
                    }
                }

                /// `db.cosmosdb.consistency_level` **UNSTABLE**: Deprecated, use `cosmosdb.consistency.level` instead.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `Strong`
                ///     - `BoundedStaleness`
                ///     - `Session`
                ///     - `Eventual`
                ///     - `ConsistentPrefix`
                /// - Examples:
                ///     - `Eventual`
                ///     - `ConsistentPrefix`
                ///     - `BoundedStaleness`
                ///     - `Strong`
                ///     - `Session`
                @available(*, deprecated, renamed: "SpanAttributes.azure.cosmosdb.consistency.level")
                public var consistencyLevel: SpanAttributeKey<ConsistencyLevelEnum> {
                    .init(name: OTelAttribute.db.cosmosdb.consistencyLevel)
                }

                public struct ConsistencyLevelEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                    public let rawValue: String
                    public init(rawValue: String) {
                        self.rawValue = rawValue
                    }
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
                    }
                }

                /// `db.cosmosdb.container` **UNSTABLE**: Deprecated, use `db.collection.name` instead.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `mytable`
                @available(*, deprecated, renamed: "SpanAttributes.db.collection.name")
                public var container: SpanAttributeKey<String> { .init(name: OTelAttribute.db.cosmosdb.container) }

                /// `db.cosmosdb.operation_type` **UNSTABLE**: Deprecated, no replacement at this time.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `batch`
                ///     - `create`
                ///     - `delete`
                ///     - `execute`
                ///     - `execute_javascript`
                ///     - `invalid`
                ///     - `head`
                ///     - `head_feed`
                ///     - `patch`
                ///     - `query`
                ///     - `query_plan`
                ///     - `read`
                ///     - `read_feed`
                ///     - `replace`
                ///     - `upsert`
                @available(*, deprecated, message: "Obsoleted: Removed, no replacement at this time.")
                public var operationType: SpanAttributeKey<OperationTypeEnum> {
                    .init(name: OTelAttribute.db.cosmosdb.operationType)
                }

                public struct OperationTypeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                    public let rawValue: String
                    public init(rawValue: String) {
                        self.rawValue = rawValue
                    }
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
                    }
                }

                /// `db.cosmosdb.regions_contacted` **UNSTABLE**: Deprecated, use `azure.cosmosdb.operation.contacted_regions` instead.
                ///
                /// - Stability: development
                /// - Type: stringArray
                @available(*, deprecated, renamed: "SpanAttributes.azure.cosmosdb.operation.contactedRegions")
                public var regionsContacted: SpanAttributeKey<[String]> {
                    .init(name: OTelAttribute.db.cosmosdb.regionsContacted)
                }

                /// `db.cosmosdb.request_charge` **UNSTABLE**: Deprecated, use `azure.cosmosdb.operation.request_charge` instead.
                ///
                /// - Stability: development
                /// - Type: double
                /// - Examples:
                ///     - `46.18`
                ///     - `1.0`
                @available(*, deprecated, renamed: "SpanAttributes.azure.cosmosdb.operation.requestCharge")
                public var requestCharge: SpanAttributeKey<Double> {
                    .init(name: OTelAttribute.db.cosmosdb.requestCharge)
                }

                /// `db.cosmosdb.request_content_length` **UNSTABLE**: Deprecated, use `azure.cosmosdb.request.body.size` instead.
                ///
                /// - Stability: development
                /// - Type: int
                @available(*, deprecated, renamed: "SpanAttributes.azure.cosmosdb.request.body.size")
                public var requestContentLength: SpanAttributeKey<Int> {
                    .init(name: OTelAttribute.db.cosmosdb.requestContentLength)
                }

                /// `db.cosmosdb.status_code` **UNSTABLE**: Deprecated, use `db.response.status_code` instead.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Examples:
                ///     - `200`
                ///     - `201`
                @available(*, deprecated, message: "Use `db.response.status_code` instead.")
                public var statusCode: SpanAttributeKey<Int> { .init(name: OTelAttribute.db.cosmosdb.statusCode) }

                /// `db.cosmosdb.sub_status_code` **UNSTABLE**: Deprecated, use `azure.cosmosdb.response.sub_status_code` instead.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Examples:
                ///     - `1000`
                ///     - `1002`
                @available(*, deprecated, renamed: "SpanAttributes.azure.cosmosdb.response.subStatusCode")
                public var subStatusCode: SpanAttributeKey<Int> { .init(name: OTelAttribute.db.cosmosdb.subStatusCode) }
            }
        }
        #endif

        #if Experimental
        /// `db.elasticsearch` namespace
        public var elasticsearch: ElasticsearchAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ElasticsearchAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            /// `db.elasticsearch.path_parts` **UNSTABLE**: Deprecated, use `db.operation.parameter` instead.
            ///
            /// - Stability: development
            /// - Type: templateString
            /// - Examples:
            ///     - `test-index`
            ///     - `123`
            public var pathParts: PathPartsAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct PathPartsAttributes {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: String) {
                    let attributeID = self.attributeID(forKey: key)
                    self.attributes[attributeID] = value
                }

                private func attributeID(forKey key: String) -> String {
                    var attributeID = "db.elasticsearch.path_parts."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeID.append("_")
                        } else {
                            attributeID.append(character.lowercased())
                        }
                    }

                    return attributeID
                }
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
            }

            /// `db.elasticsearch.cluster` namespace
            public var cluster: ClusterAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct ClusterAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `db.elasticsearch.cluster.name` **UNSTABLE**: Deprecated, use `db.namespace` instead.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `e9106fc68e3044f0b1475b04bf4ffd5f`
                    @available(*, deprecated, renamed: "SpanAttributes.db.namespace")
                    public var name: SpanAttributeKey<String> {
                        .init(name: OTelAttribute.db.elasticsearch.cluster.name)
                    }
                }
            }

            /// `db.elasticsearch.node` namespace
            public var node: NodeAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct NodeAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `db.elasticsearch.node.name` **UNSTABLE**: Deprecated, use `elasticsearch.node.name` instead.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `instance-0000000001`
                    @available(*, deprecated, renamed: "SpanAttributes.elasticsearch.node.name")
                    public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.db.elasticsearch.node.name) }
                }
            }
        }
        #endif

        #if Experimental
        /// `db.instance` namespace
        public var instance: InstanceAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct InstanceAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `db.instance.id` **UNSTABLE**: Deprecated, no general replacement at this time. For Elasticsearch, use `db.elasticsearch.node.name` instead.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `mysql-e26b99z.example.com`
                @available(
                    *,
                    deprecated,
                    message:
                        "Obsoleted: Removed, no general replacement at this time. For Elasticsearch, use `db.elasticsearch.node.name` instead."
                )
                public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.db.instance.id) }
            }
        }
        #endif

        #if Experimental
        /// `db.jdbc` namespace
        public var jdbc: JdbcAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct JdbcAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `db.jdbc.driver_classname` **UNSTABLE**: Removed, no replacement at this time.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `org.postgresql.Driver`
                ///     - `com.microsoft.sqlserver.jdbc.SQLServerDriver`
                @available(*, deprecated, message: "Obsoleted: Removed, no replacement at this time.")
                public var driverClassname: SpanAttributeKey<String> {
                    .init(name: OTelAttribute.db.jdbc.driverClassname)
                }
            }
        }
        #endif

        #if Experimental
        /// `db.mongodb` namespace
        public var mongodb: MongodbAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct MongodbAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `db.mongodb.collection` **UNSTABLE**: Deprecated, use `db.collection.name` instead.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `mytable`
                @available(*, deprecated, renamed: "SpanAttributes.db.collection.name")
                public var collection: SpanAttributeKey<String> { .init(name: OTelAttribute.db.mongodb.collection) }
            }
        }
        #endif

        #if Experimental
        /// `db.mssql` namespace
        public var mssql: MssqlAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct MssqlAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `db.mssql.instance_name` **UNSTABLE**: Deprecated, SQL Server instance is now populated as a part of `db.namespace` attribute.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `MSSQLSERVER`
                @available(*, deprecated, message: "Obsoleted: Removed, no replacement at this time.")
                public var instanceName: SpanAttributeKey<String> { .init(name: OTelAttribute.db.mssql.instanceName) }
            }
        }
        #endif

        /// `db.operation` namespace
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

            #if Experimental
            /// `db.operation.parameter` **UNSTABLE**: A database operation parameter, with `<key>` being the parameter name, and the attribute value being a string representation of the parameter value.
            ///
            /// - Stability: development
            /// - Type: templateString
            /// - Examples:
            ///     - `someval`
            ///     - `55`
            ///
            /// For example, a client-side maximum number of rows to read from the database
            /// MAY be recorded as the `db.operation.parameter.max_rows` attribute.
            ///
            /// `db.query.text` parameters SHOULD be captured using `db.query.parameter.<key>`
            /// instead of `db.operation.parameter.<key>`.
            public var parameter: ParameterAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct ParameterAttributes {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: String) {
                    let attributeID = self.attributeID(forKey: key)
                    self.attributes[attributeID] = value
                }

                private func attributeID(forKey key: String) -> String {
                    var attributeID = "db.operation.parameter."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeID.append("_")
                        } else {
                            attributeID.append(character.lowercased())
                        }
                    }

                    return attributeID
                }
            }
            #endif

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `db.operation.name`: The name of the operation or command being executed.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Examples:
                ///     - `findAndModify`
                ///     - `HMSET`
                ///     - `SELECT`
                ///
                /// It is RECOMMENDED to capture the value as provided by the application
                /// without attempting to do any case normalization.
                ///
                /// The operation name SHOULD NOT be extracted from `db.query.text`,
                /// when the database system supports query text with multiple operations
                /// in non-batch operations.
                ///
                /// If spaces can occur in the operation name, multiple consecutive spaces
                /// SHOULD be normalized to a single space.
                ///
                /// For batch operations, if the individual operations are known to have the same operation name
                /// then that operation name SHOULD be used prepended by `BATCH `,
                /// otherwise `db.operation.name` SHOULD be `BATCH` or some other database
                /// system specific term if more applicable.
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.db.operation.name) }
            }

            /// `db.operation.batch` namespace
            public var batch: BatchAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct BatchAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `db.operation.batch.size`: The number of queries included in a batch operation.
                    ///
                    /// - Stability: stable
                    /// - Type: int
                    /// - Examples:
                    ///     - `2`
                    ///     - `3`
                    ///     - `4`
                    ///
                    /// Operations are only considered batches when they contain two or more operations, and so `db.operation.batch.size` SHOULD never be `1`.
                    public var size: SpanAttributeKey<Int> { .init(name: OTelAttribute.db.operation.batch.size) }
                }
            }
        }

        /// `db.query` namespace
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

            #if Experimental
            /// `db.query.parameter` **UNSTABLE**: A database query parameter, with `<key>` being the parameter name, and the attribute value being a string representation of the parameter value.
            ///
            /// - Stability: development
            /// - Type: templateString
            /// - Examples:
            ///     - `someval`
            ///     - `55`
            ///
            /// If a query parameter has no name and instead is referenced only by index,
            /// then `<key>` SHOULD be the 0-based index.
            ///
            /// `db.query.parameter.<key>` SHOULD match
            /// up with the parameterized placeholders present in `db.query.text`.
            ///
            /// It is RECOMMENDED to capture the value as provided by the application
            /// without attempting to do any case normalization.
            ///
            /// `db.query.parameter.<key>` SHOULD NOT be captured on batch operations.
            ///
            /// Examples:
            ///
            /// - For a query `SELECT * FROM users where username =  %s` with the parameter `"jdoe"`,
            ///   the attribute `db.query.parameter.0` SHOULD be set to `"jdoe"`.
            ///
            /// - For a query `"SELECT * FROM users WHERE username = %(userName)s;` with parameter
            ///   `userName = "jdoe"`, the attribute `db.query.parameter.userName` SHOULD be set to `"jdoe"`.
            public var parameter: ParameterAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct ParameterAttributes {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: String) {
                    let attributeID = self.attributeID(forKey: key)
                    self.attributes[attributeID] = value
                }

                private func attributeID(forKey key: String) -> String {
                    var attributeID = "db.query.parameter."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeID.append("_")
                        } else {
                            attributeID.append(character.lowercased())
                        }
                    }

                    return attributeID
                }
            }
            #endif

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `db.query.summary`: Low cardinality summary of a database query.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Examples:
                ///     - `SELECT wuser_table`
                ///     - `INSERT shipping_details SELECT orders`
                ///     - `get user by id`
                ///
                /// The query summary describes a class of database queries and is useful
                /// as a grouping key, especially when analyzing telemetry for database
                /// calls involving complex queries.
                ///
                /// Summary may be available to the instrumentation through
                /// instrumentation hooks or other means. If it is not available, instrumentations
                /// that support query parsing SHOULD generate a summary following
                /// [Generating query summary](/docs/database/database-spans.md#generating-a-summary-of-the-query)
                /// section.
                public var summary: SpanAttributeKey<String> { .init(name: OTelAttribute.db.query.summary) }

                /// `db.query.text`: The database query being executed.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Examples:
                ///     - `SELECT * FROM wuser_table where username = ?`
                ///     - `SET mykey ?`
                ///
                /// For sanitization see [Sanitization of `db.query.text`](/docs/database/database-spans.md#sanitization-of-dbquerytext).
                /// For batch operations, if the individual operations are known to have the same query text then that query text SHOULD be used, otherwise all of the individual query texts SHOULD be concatenated with separator `; ` or some other database system specific separator if more applicable.
                /// Parameterized query text SHOULD NOT be sanitized. Even though parameterized query text can potentially have sensitive data, by using a parameterized query the user is giving a strong signal that any sensitive data will be passed as parameter values, and the benefit to observability of capturing the static part of the query text by default outweighs the risk.
                public var text: SpanAttributeKey<String> { .init(name: OTelAttribute.db.query.text) }
            }
        }

        #if Experimental
        /// `db.redis` namespace
        public var redis: RedisAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct RedisAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `db.redis.database_index` **UNSTABLE**: Deprecated, use `db.namespace` instead.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Examples:
                ///     - `0`
                ///     - `1`
                ///     - `15`
                @available(*, deprecated)
                public var databaseIndex: SpanAttributeKey<Int> { .init(name: OTelAttribute.db.redis.databaseIndex) }
            }
        }
        #endif

        /// `db.response` namespace
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

                #if Experimental
                /// `db.response.returned_rows` **UNSTABLE**: Number of rows returned by the operation.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Examples:
                ///     - `10`
                ///     - `30`
                ///     - `1000`
                public var returnedRows: SpanAttributeKey<Int> { .init(name: OTelAttribute.db.response.returnedRows) }
                #endif

                /// `db.response.status_code`: Database response status code.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Examples:
                ///     - `102`
                ///     - `ORA-17002`
                ///     - `08P01`
                ///     - `404`
                ///
                /// The status code returned by the database. Usually it represents an error code, but may also represent partial success, warning, or differentiate between various types of successful outcomes.
                /// Semantic conventions for individual database systems SHOULD document what `db.response.status_code` means in the context of that system.
                public var statusCode: SpanAttributeKey<String> { .init(name: OTelAttribute.db.response.statusCode) }
            }
        }

        #if Experimental
        /// `db.sql` namespace
        public var sql: SqlAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct SqlAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `db.sql.table` **UNSTABLE**: Deprecated, use `db.collection.name` instead.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `mytable`
                @available(
                    *,
                    deprecated,
                    message:
                        "Replaced by `db.collection.name`, but only if not extracting the value from `db.query.text`."
                )
                public var table: SpanAttributeKey<String> { .init(name: OTelAttribute.db.sql.table) }
            }
        }
        #endif

        /// `db.stored_procedure` namespace
        public var storedProcedure: StoredProcedureAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct StoredProcedureAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `db.stored_procedure.name`: The name of a stored procedure within the database.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Example: `GetCustomer`
                ///
                /// It is RECOMMENDED to capture the value as provided by the application
                /// without attempting to do any case normalization.
                ///
                /// For batch operations, if the individual operations are known to have the same
                /// stored procedure name then that stored procedure name SHOULD be used.
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.db.storedProcedure.name) }
            }
        }

        /// `db.system` namespace
        public var system: SystemAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct SystemAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `db.system.name`: The database management system (DBMS) product as identified by the client instrumentation.
                ///
                /// - Stability: stable
                /// - Type: enum
                ///     - `other_sql`: Some other SQL database. Fallback only.
                ///     - `softwareag.adabas`: [Adabas (Adaptable Database System)](https://documentation.softwareag.com/?pf=adabas)
                ///     - `actian.ingres`: [Actian Ingres](https://www.actian.com/databases/ingres/)
                ///     - `aws.dynamodb`: [Amazon DynamoDB](https://aws.amazon.com/pm/dynamodb/)
                ///     - `aws.redshift`: [Amazon Redshift](https://aws.amazon.com/redshift/)
                ///     - `azure.cosmosdb`: [Azure Cosmos DB](https://learn.microsoft.com/azure/cosmos-db)
                ///     - `intersystems.cache`: [InterSystems Caché](https://www.intersystems.com/products/cache/)
                ///     - `cassandra`: [Apache Cassandra](https://cassandra.apache.org/)
                ///     - `clickhouse`: [ClickHouse](https://clickhouse.com/)
                ///     - `cockroachdb`: [CockroachDB](https://www.cockroachlabs.com/)
                ///     - `couchbase`: [Couchbase](https://www.couchbase.com/)
                ///     - `couchdb`: [Apache CouchDB](https://couchdb.apache.org/)
                ///     - `derby`: [Apache Derby](https://db.apache.org/derby/)
                ///     - `elasticsearch`: [Elasticsearch](https://www.elastic.co/elasticsearch)
                ///     - `firebirdsql`: [Firebird](https://www.firebirdsql.org/)
                ///     - `gcp.spanner`: [Google Cloud Spanner](https://cloud.google.com/spanner)
                ///     - `geode`: [Apache Geode](https://geode.apache.org/)
                ///     - `h2database`: [H2 Database](https://h2database.com/)
                ///     - `hbase`: [Apache HBase](https://hbase.apache.org/)
                ///     - `hive`: [Apache Hive](https://hive.apache.org/)
                ///     - `hsqldb`: [HyperSQL Database](https://hsqldb.org/)
                ///     - `ibm.db2`: [IBM Db2](https://www.ibm.com/db2)
                ///     - `ibm.informix`: [IBM Informix](https://www.ibm.com/products/informix)
                ///     - `ibm.netezza`: [IBM Netezza](https://www.ibm.com/products/netezza)
                ///     - `influxdb`: [InfluxDB](https://www.influxdata.com/)
                ///     - `instantdb`: [Instant](https://www.instantdb.com/)
                ///     - `mariadb`: [MariaDB](https://mariadb.org/)
                ///     - `memcached`: [Memcached](https://memcached.org/)
                ///     - `mongodb`: [MongoDB](https://www.mongodb.com/)
                ///     - `microsoft.sql_server`: [Microsoft SQL Server](https://www.microsoft.com/sql-server)
                ///     - `mysql`: [MySQL](https://www.mysql.com/)
                ///     - `neo4j`: [Neo4j](https://neo4j.com/)
                ///     - `opensearch`: [OpenSearch](https://opensearch.org/)
                ///     - `oracle.db`: [Oracle Database](https://www.oracle.com/database/)
                ///     - `postgresql`: [PostgreSQL](https://www.postgresql.org/)
                ///     - `redis`: [Redis](https://redis.io/)
                ///     - `sap.hana`: [SAP HANA](https://www.sap.com/products/technology-platform/hana/what-is-sap-hana.html)
                ///     - `sap.maxdb`: [SAP MaxDB](https://maxdb.sap.com/)
                ///     - `sqlite`: [SQLite](https://www.sqlite.org/)
                ///     - `teradata`: [Teradata](https://www.teradata.com/)
                ///     - `trino`: [Trino](https://trino.io/)
                ///
                /// The actual DBMS may differ from the one identified by the client. For example, when using PostgreSQL client libraries to connect to a CockroachDB, the `db.system.name` is set to `postgresql` based on the instrumentation's best knowledge.
                public var name: SpanAttributeKey<NameEnum> { .init(name: OTelAttribute.db.system.name) }

                public struct NameEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                    public let rawValue: String
                    public init(rawValue: String) {
                        self.rawValue = rawValue
                    }
                    /// `mariadb`: [MariaDB](https://mariadb.org/)
                    public static let mariadb = Self.init(rawValue: "mariadb")
                    /// `microsoft.sql_server`: [Microsoft SQL Server](https://www.microsoft.com/sql-server)
                    public static let microsoft_sqlServer = Self.init(rawValue: "microsoft.sql_server")
                    /// `mysql`: [MySQL](https://www.mysql.com/)
                    public static let mysql = Self.init(rawValue: "mysql")
                    /// `postgresql`: [PostgreSQL](https://www.postgresql.org/)
                    public static let postgresql = Self.init(rawValue: "postgresql")
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
                    }
                }
            }
        }
    }
}

#endif
