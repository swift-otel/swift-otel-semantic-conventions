// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
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
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `db.connection_string`: Deprecated, use `server.address`, `server.port` attributes instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `Server=(localdb)\v11.0;Integrated Security=true;`
            @available(*, deprecated, message: "Replaced by `server.address` and `server.port`.")
            public var connectionString: Self.Key<String> { .init(name: OTelAttribute.db.connectionString) }
    
            /// `db.name`: Deprecated, use `db.namespace` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `customers`
            ///     - `main`
            @available(*, deprecated, message: "Replaced by `db.namespace`.")
            public var name: Self.Key<String> { .init(name: OTelAttribute.db.name) }
    
            /// `db.namespace`: The name of the database, fully qualified within the server address and port. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// If a database system has multiple namespace components, they SHOULD be concatenated (potentially using database system specific conventions) from most general to most specific namespace component, and more specific namespaces SHOULD NOT be captured without the more general namespaces, to ensure that "startswith" queries for the more general namespaces will be valid. Semantic conventions for individual database systems SHOULD document what `db.namespace` means in the context of that system. It is RECOMMENDED to capture the value as provided by the application without attempting to do any case normalization. This attribute has stability level RELEASE CANDIDATE. 
            /// 
            /// - Examples:
            ///     - `customers`
            ///     - `test.users`
            public var namespace: Self.Key<String> { .init(name: OTelAttribute.db.namespace) }
    
            /// `db.operation`: Deprecated, use `db.operation.name` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `findAndModify`
            ///     - `HMSET`
            ///     - `SELECT`
            @available(*, deprecated, message: "Replaced by `db.operation.name`.")
            public var _operation: Self.Key<String> { .init(name: OTelAttribute.db._operation) }
    
            /// `db.statement`: The database statement being executed.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `SELECT * FROM wuser_table`
            ///     - `SET mykey "WuValue"`
            @available(*, deprecated, message: "Replaced by `db.query.text`.")
            public var statement: Self.Key<String> { .init(name: OTelAttribute.db.statement) }
    
            /// `db.system`: The database management system (DBMS) product as identified by the client instrumentation.
            /// 
            /// - Stability: experimental
            /// 
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
            ///     - `mariadb`: MariaDB (This value has stability level RELEASE CANDIDATE)
            ///     - `maxdb`: SAP MaxDB
            ///     - `memcached`: Memcached
            ///     - `mongodb`: MongoDB
            ///     - `mssql`: Microsoft SQL Server (This value has stability level RELEASE CANDIDATE)
            ///     - `mssqlcompact`: Deprecated, Microsoft SQL Server Compact is discontinued.
            ///     - `mysql`: MySQL (This value has stability level RELEASE CANDIDATE)
            ///     - `neo4j`: Neo4j
            ///     - `netezza`: Netezza
            ///     - `opensearch`: OpenSearch
            ///     - `oracle`: Oracle Database
            ///     - `pervasive`: Pervasive PSQL
            ///     - `pointbase`: PointBase
            ///     - `postgresql`: PostgreSQL (This value has stability level RELEASE CANDIDATE)
            ///     - `progress`: Progress Database
            ///     - `redis`: Redis
            ///     - `redshift`: Amazon Redshift
            ///     - `spanner`: Cloud Spanner
            ///     - `sqlite`: SQLite
            ///     - `sybase`: Sybase
            ///     - `teradata`: Teradata
            ///     - `trino`: Trino
            ///     - `vertica`: Vertica
            /// 
            /// The actual DBMS may differ from the one identified by the client. For example, when using PostgreSQL client libraries to connect to a CockroachDB, the `db.system` is set to `postgresql` based on the instrumentation's best knowledge. This attribute has stability level RELEASE CANDIDATE. 
            public var system: Self.Key<SystemEnum> { .init(name: OTelAttribute.db.system) }
            
            public struct SystemEnum: SpanAttributeConvertible {
                private let rawValue: String
                /// `other_sql`: Some other SQL database. Fallback only. See notes.
                public static let otherSql = Self.init(rawValue: "other_sql")
                /// `adabas`: Adabas (Adaptable Database System)
                public static let adabas = Self.init(rawValue: "adabas")
                /// `cache`: Deprecated, use `intersystems_cache` instead.
                @available(*, deprecated, message: "Replaced by `intersystems_cache`.")
                public static let cache = Self.init(rawValue: "cache")
                /// `intersystems_cache`: InterSystems Caché
                public static let intersystemsCache = Self.init(rawValue: "intersystems_cache")
                /// `cassandra`: Apache Cassandra
                public static let cassandra = Self.init(rawValue: "cassandra")
                /// `clickhouse`: ClickHouse
                public static let clickhouse = Self.init(rawValue: "clickhouse")
                /// `cloudscape`: Deprecated, use `other_sql` instead.
                @available(*, deprecated, message: "Replaced by `other_sql`.")
                public static let cloudscape = Self.init(rawValue: "cloudscape")
                /// `cockroachdb`: CockroachDB
                public static let cockroachdb = Self.init(rawValue: "cockroachdb")
                /// `coldfusion`: Deprecated, no replacement at this time.
                @available(*, deprecated, message: "Removed.")
                public static let coldfusion = Self.init(rawValue: "coldfusion")
                /// `cosmosdb`: Microsoft Azure Cosmos DB
                public static let cosmosdb = Self.init(rawValue: "cosmosdb")
                /// `couchbase`: Couchbase
                public static let couchbase = Self.init(rawValue: "couchbase")
                /// `couchdb`: CouchDB
                public static let couchdb = Self.init(rawValue: "couchdb")
                /// `db2`: IBM Db2
                public static let db2 = Self.init(rawValue: "db2")
                /// `derby`: Apache Derby
                public static let derby = Self.init(rawValue: "derby")
                /// `dynamodb`: Amazon DynamoDB
                public static let dynamodb = Self.init(rawValue: "dynamodb")
                /// `edb`: EnterpriseDB
                public static let edb = Self.init(rawValue: "edb")
                /// `elasticsearch`: Elasticsearch
                public static let elasticsearch = Self.init(rawValue: "elasticsearch")
                /// `filemaker`: FileMaker
                public static let filemaker = Self.init(rawValue: "filemaker")
                /// `firebird`: Firebird
                public static let firebird = Self.init(rawValue: "firebird")
                /// `firstsql`: Deprecated, use `other_sql` instead.
                @available(*, deprecated, message: "Replaced by `other_sql`.")
                public static let firstsql = Self.init(rawValue: "firstsql")
                /// `geode`: Apache Geode
                public static let geode = Self.init(rawValue: "geode")
                /// `h2`: H2
                public static let h2 = Self.init(rawValue: "h2")
                /// `hanadb`: SAP HANA
                public static let hanadb = Self.init(rawValue: "hanadb")
                /// `hbase`: Apache HBase
                public static let hbase = Self.init(rawValue: "hbase")
                /// `hive`: Apache Hive
                public static let hive = Self.init(rawValue: "hive")
                /// `hsqldb`: HyperSQL DataBase
                public static let hsqldb = Self.init(rawValue: "hsqldb")
                /// `influxdb`: InfluxDB
                public static let influxdb = Self.init(rawValue: "influxdb")
                /// `informix`: Informix
                public static let informix = Self.init(rawValue: "informix")
                /// `ingres`: Ingres
                public static let ingres = Self.init(rawValue: "ingres")
                /// `instantdb`: InstantDB
                public static let instantdb = Self.init(rawValue: "instantdb")
                /// `interbase`: InterBase
                public static let interbase = Self.init(rawValue: "interbase")
                /// `mariadb`: MariaDB (This value has stability level RELEASE CANDIDATE)
                public static let mariadb = Self.init(rawValue: "mariadb")
                /// `maxdb`: SAP MaxDB
                public static let maxdb = Self.init(rawValue: "maxdb")
                /// `memcached`: Memcached
                public static let memcached = Self.init(rawValue: "memcached")
                /// `mongodb`: MongoDB
                public static let mongodb = Self.init(rawValue: "mongodb")
                /// `mssql`: Microsoft SQL Server (This value has stability level RELEASE CANDIDATE)
                public static let mssql = Self.init(rawValue: "mssql")
                /// `mssqlcompact`: Deprecated, Microsoft SQL Server Compact is discontinued.
                @available(*, deprecated, message: "Removed, use `other_sql` instead.")
                public static let mssqlcompact = Self.init(rawValue: "mssqlcompact")
                /// `mysql`: MySQL (This value has stability level RELEASE CANDIDATE)
                public static let mysql = Self.init(rawValue: "mysql")
                /// `neo4j`: Neo4j
                public static let neo4j = Self.init(rawValue: "neo4j")
                /// `netezza`: Netezza
                public static let netezza = Self.init(rawValue: "netezza")
                /// `opensearch`: OpenSearch
                public static let opensearch = Self.init(rawValue: "opensearch")
                /// `oracle`: Oracle Database
                public static let oracle = Self.init(rawValue: "oracle")
                /// `pervasive`: Pervasive PSQL
                public static let pervasive = Self.init(rawValue: "pervasive")
                /// `pointbase`: PointBase
                public static let pointbase = Self.init(rawValue: "pointbase")
                /// `postgresql`: PostgreSQL (This value has stability level RELEASE CANDIDATE)
                public static let postgresql = Self.init(rawValue: "postgresql")
                /// `progress`: Progress Database
                public static let progress = Self.init(rawValue: "progress")
                /// `redis`: Redis
                public static let redis = Self.init(rawValue: "redis")
                /// `redshift`: Amazon Redshift
                public static let redshift = Self.init(rawValue: "redshift")
                /// `spanner`: Cloud Spanner
                public static let spanner = Self.init(rawValue: "spanner")
                /// `sqlite`: SQLite
                public static let sqlite = Self.init(rawValue: "sqlite")
                /// `sybase`: Sybase
                public static let sybase = Self.init(rawValue: "sybase")
                /// `teradata`: Teradata
                public static let teradata = Self.init(rawValue: "teradata")
                /// `trino`: Trino
                public static let trino = Self.init(rawValue: "trino")
                /// `vertica`: Vertica
                public static let vertica = Self.init(rawValue: "vertica")
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(self.rawValue)
                }
            }
    
            /// `db.user`: Deprecated, no replacement at this time.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `readonly_user`
            ///     - `reporting_user`
            @available(*, deprecated, message: "No replacement at this time.")
            public var user: Self.Key<String> { .init(name: OTelAttribute.db.user) }
        }
    
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
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `db.cassandra.consistency_level`: The consistency level of the query. Based on consistency values from [CQL](https://docs.datastax.com/en/cassandra-oss/3.0/cassandra/dml/dmlConfigConsistency.html). 
                /// 
                /// - Stability: experimental
                /// 
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
                public var consistencyLevel: Self.Key<ConsistencyLevelEnum> { .init(name: OTelAttribute.db.cassandra.consistencyLevel) }
                
                public struct ConsistencyLevelEnum: SpanAttributeConvertible {
                    private let rawValue: String
                    /// `all`
                    public static let all = Self.init(rawValue: "all")
                    /// `each_quorum`
                    public static let eachQuorum = Self.init(rawValue: "each_quorum")
                    /// `quorum`
                    public static let quorum = Self.init(rawValue: "quorum")
                    /// `local_quorum`
                    public static let localQuorum = Self.init(rawValue: "local_quorum")
                    /// `one`
                    public static let one = Self.init(rawValue: "one")
                    /// `two`
                    public static let two = Self.init(rawValue: "two")
                    /// `three`
                    public static let three = Self.init(rawValue: "three")
                    /// `local_one`
                    public static let localOne = Self.init(rawValue: "local_one")
                    /// `any`
                    public static let any = Self.init(rawValue: "any")
                    /// `serial`
                    public static let serial = Self.init(rawValue: "serial")
                    /// `local_serial`
                    public static let localSerial = Self.init(rawValue: "local_serial")
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
        
                /// `db.cassandra.idempotence`: Whether or not the query is idempotent. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: boolean
                public var idempotence: Self.Key<Bool> { .init(name: OTelAttribute.db.cassandra.idempotence) }
        
                /// `db.cassandra.page_size`: The fetch size used for paging, i.e. how many rows will be returned at once. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `5000`
                public var pageSize: Self.Key<Int> { .init(name: OTelAttribute.db.cassandra.pageSize) }
        
                /// `db.cassandra.speculative_execution_count`: The number of times a query was speculatively executed. Not set or `0` if the query was not executed speculatively. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Examples:
                ///     - `0`
                ///     - `2`
                public var speculativeExecutionCount: Self.Key<Int> { .init(name: OTelAttribute.db.cassandra.speculativeExecutionCount) }
        
                /// `db.cassandra.table`: Deprecated, use `db.collection.name` instead.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `mytable`
                @available(*, deprecated, message: "Replaced by `db.collection.name`.")
                public var table: Self.Key<String> { .init(name: OTelAttribute.db.cassandra.table) }
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
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `db.cassandra.coordinator.dc`: The data center of the coordinating node for a query. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Example: `us-west-2`
                    public var dc: Self.Key<String> { .init(name: OTelAttribute.db.cassandra.coordinator.dc) }
            
                    /// `db.cassandra.coordinator.id`: The ID of the coordinating node for a query. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Example: `be13faa2-8574-4d71-926d-27f16cf8a7af`
                    public var id: Self.Key<String> { .init(name: OTelAttribute.db.cassandra.coordinator.id) }
                }
            
            
            }
        }
    
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
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
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
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `db.client.connection.state`: The state of a connection in the pool
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: enum
                    ///     - `idle`
                    ///     - `used`
                    /// 
                    /// - Example: `idle`
                    public var state: Self.Key<StateEnum> { .init(name: OTelAttribute.db.client.connection.state) }
                    
                    public struct StateEnum: SpanAttributeConvertible {
                        private let rawValue: String
                        /// `idle`
                        public static let idle = Self.init(rawValue: "idle")
                        /// `used`
                        public static let used = Self.init(rawValue: "used")
                        public func toSpanAttribute() -> Tracing.SpanAttribute {
                            return .string(self.rawValue)
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
                    public var attributes: SpanAttributes
                
                    public init(attributes: SpanAttributes) {
                        self.attributes = attributes
                    }
                
                    public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                        public init() {}
                        /// `db.client.connection.pool.name`: The name of the connection pool; unique within the instrumented application. In case the connection pool implementation doesn't provide a name, instrumentation SHOULD use a combination of parameters that would make the name unique, for example, combining attributes `server.address`, `server.port`, and `db.namespace`, formatted as `server.address:server.port/db.namespace`. Instrumentations that generate connection pool name following different patterns SHOULD document it. 
                        /// 
                        /// - Stability: experimental
                        /// 
                        /// - Type: string
                        /// 
                        /// - Example: `myDataSource`
                        public var name: Self.Key<String> { .init(name: OTelAttribute.db.client.connection.pool.name) }
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
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `db.client.connections.state`: Deprecated, use `db.client.connection.state` instead.
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: enum
                    ///     - `idle`
                    ///     - `used`
                    /// 
                    /// - Example: `idle`
                    @available(*, deprecated, message: "Replaced by `db.client.connection.state`.")
                    public var state: Self.Key<StateEnum> { .init(name: OTelAttribute.db.client.connections.state) }
                    
                    public struct StateEnum: SpanAttributeConvertible {
                        private let rawValue: String
                        /// `idle`
                        public static let idle = Self.init(rawValue: "idle")
                        /// `used`
                        public static let used = Self.init(rawValue: "used")
                        public func toSpanAttribute() -> Tracing.SpanAttribute {
                            return .string(self.rawValue)
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
                    public var attributes: SpanAttributes
                
                    public init(attributes: SpanAttributes) {
                        self.attributes = attributes
                    }
                
                    public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                        public init() {}
                        /// `db.client.connections.pool.name`: Deprecated, use `db.client.connection.pool.name` instead.
                        /// 
                        /// - Stability: experimental
                        /// 
                        /// - Type: string
                        /// 
                        /// - Example: `myDataSource`
                        @available(*, deprecated, message: "Replaced by `db.client.connection.pool.name`.")
                        public var name: Self.Key<String> { .init(name: OTelAttribute.db.client.connections.pool.name) }
                    }
                
                
                }
            }
        }
    
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
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `db.collection.name`: The name of a collection (table, container) within the database.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// It is RECOMMENDED to capture the value as provided by the application without attempting to do any case normalization.  The collection name SHOULD NOT be extracted from `db.query.text`, unless the query format is known to only ever have a single collection name present.  For batch operations, if the individual operations are known to have the same collection name then that collection name SHOULD be used.  This attribute has stability level RELEASE CANDIDATE. 
                /// 
                /// - Examples:
                ///     - `public.users`
                ///     - `customers`
                public var name: Self.Key<String> { .init(name: OTelAttribute.db.collection.name) }
            }
        
        
        }
    
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
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `db.cosmosdb.client_id`: Unique Cosmos client instance id.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `3ba4827d-4422-483f-b59f-85b74211c11d`
                public var clientId: Self.Key<String> { .init(name: OTelAttribute.db.cosmosdb.clientId) }
        
                /// `db.cosmosdb.connection_mode`: Cosmos client connection mode.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `gateway`: Gateway (HTTP) connection.
                ///     - `direct`: Direct connection.
                public var connectionMode: Self.Key<ConnectionModeEnum> { .init(name: OTelAttribute.db.cosmosdb.connectionMode) }
                
                public struct ConnectionModeEnum: SpanAttributeConvertible {
                    private let rawValue: String
                    /// `gateway`: Gateway (HTTP) connection.
                    public static let gateway = Self.init(rawValue: "gateway")
                    /// `direct`: Direct connection.
                    public static let direct = Self.init(rawValue: "direct")
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
        
                /// `db.cosmosdb.consistency_level`: Account or request [consistency level](https://learn.microsoft.com/azure/cosmos-db/consistency-levels).
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `Strong`
                ///     - `BoundedStaleness`
                ///     - `Session`
                ///     - `Eventual`
                ///     - `ConsistentPrefix`
                /// 
                /// - Examples:
                ///     - `Eventual`
                ///     - `ConsistentPrefix`
                ///     - `BoundedStaleness`
                ///     - `Strong`
                ///     - `Session`
                public var consistencyLevel: Self.Key<ConsistencyLevelEnum> { .init(name: OTelAttribute.db.cosmosdb.consistencyLevel) }
                
                public struct ConsistencyLevelEnum: SpanAttributeConvertible {
                    private let rawValue: String
                    /// `Strong`
                    public static let strong = Self.init(rawValue: "Strong")
                    /// `BoundedStaleness`
                    public static let boundedStaleness = Self.init(rawValue: "BoundedStaleness")
                    /// `Session`
                    public static let session = Self.init(rawValue: "Session")
                    /// `Eventual`
                    public static let eventual = Self.init(rawValue: "Eventual")
                    /// `ConsistentPrefix`
                    public static let consistentPrefix = Self.init(rawValue: "ConsistentPrefix")
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
        
                /// `db.cosmosdb.container`: Deprecated, use `db.collection.name` instead.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `mytable`
                @available(*, deprecated, message: "Replaced by `db.collection.name`.")
                public var container: Self.Key<String> { .init(name: OTelAttribute.db.cosmosdb.container) }
        
                /// `db.cosmosdb.operation_type`: Deprecated, no replacement at this time.
                /// 
                /// - Stability: experimental
                /// 
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
                @available(*, deprecated, message: "No replacement at this time.")
                public var operationType: Self.Key<OperationTypeEnum> { .init(name: OTelAttribute.db.cosmosdb.operationType) }
                
                public struct OperationTypeEnum: SpanAttributeConvertible {
                    private let rawValue: String
                    /// `batch`
                    public static let batch = Self.init(rawValue: "batch")
                    /// `create`
                    public static let create = Self.init(rawValue: "create")
                    /// `delete`
                    public static let delete = Self.init(rawValue: "delete")
                    /// `execute`
                    public static let execute = Self.init(rawValue: "execute")
                    /// `execute_javascript`
                    public static let executeJavascript = Self.init(rawValue: "execute_javascript")
                    /// `invalid`
                    public static let invalid = Self.init(rawValue: "invalid")
                    /// `head`
                    public static let head = Self.init(rawValue: "head")
                    /// `head_feed`
                    public static let headFeed = Self.init(rawValue: "head_feed")
                    /// `patch`
                    public static let patch = Self.init(rawValue: "patch")
                    /// `query`
                    public static let query = Self.init(rawValue: "query")
                    /// `query_plan`
                    public static let queryPlan = Self.init(rawValue: "query_plan")
                    /// `read`
                    public static let read = Self.init(rawValue: "read")
                    /// `read_feed`
                    public static let readFeed = Self.init(rawValue: "read_feed")
                    /// `replace`
                    public static let replace = Self.init(rawValue: "replace")
                    /// `upsert`
                    public static let upsert = Self.init(rawValue: "upsert")
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
        
                /// `db.cosmosdb.regions_contacted`: List of regions contacted during operation in the order that they were contacted. If there is more than one region listed, it indicates that the operation was performed on multiple regions i.e. cross-regional call. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: stringArray
                /// 
                /// Region name matches the format of `displayName` in [Azure Location API](https://learn.microsoft.com/rest/api/subscription/subscriptions/list-locations?view=rest-subscription-2021-10-01&tabs=HTTP#location) 
                public var regionsContacted: Self.Key<[String]> { .init(name: OTelAttribute.db.cosmosdb.regionsContacted) }
        
                /// `db.cosmosdb.request_charge`: Request units consumed for the operation.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: double
                /// 
                /// - Examples:
                ///     - `46.18`
                ///     - `1.0`
                public var requestCharge: Self.Key<Double> { .init(name: OTelAttribute.db.cosmosdb.requestCharge) }
        
                /// `db.cosmosdb.request_content_length`: Request payload size in bytes.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                public var requestContentLength: Self.Key<Int> { .init(name: OTelAttribute.db.cosmosdb.requestContentLength) }
        
                /// `db.cosmosdb.status_code`: Deprecated, use `db.response.status_code` instead.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Examples:
                ///     - `200`
                ///     - `201`
                @available(*, deprecated, message: "Replaced by `db.response.status_code`.")
                public var statusCode: Self.Key<Int> { .init(name: OTelAttribute.db.cosmosdb.statusCode) }
        
                /// `db.cosmosdb.sub_status_code`: Cosmos DB sub status code.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Examples:
                ///     - `1000`
                ///     - `1002`
                public var subStatusCode: Self.Key<Int> { .init(name: OTelAttribute.db.cosmosdb.subStatusCode) }
            }
        
        
        }
    
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
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
            /// `db.elasticsearch.path_parts`: A dynamic value in the url path. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: templateString
            /// 
            /// Many Elasticsearch url paths allow dynamic values. These SHOULD be recorded in span attributes in the format `db.elasticsearch.path_parts.<key>`, where `<key>` is the url path part name. The implementation SHOULD reference the [elasticsearch schema](https://raw.githubusercontent.com/elastic/elasticsearch-specification/main/output/schema/schema.json) in order to map the path part values to their names. 
            /// 
            /// - Examples:
            ///     - `db.elasticsearch.path_parts.index=test-index`
            ///     - `db.elasticsearch.path_parts.doc_id=123`
            public var pathParts: PathPartsAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            public struct PathPartsAttributes {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public mutating func set(_ key: String, to value: String) {
                    let attributeId = self.attributeId(forKey: key)
                    self.attributes[attributeId] = value
                }
            
                private func attributeId(forKey key: String) -> String {
                    var attributeId = "db.elasticsearch.path_parts."
            
                    for index in key.indices {
                        let character = key[index]
            
                        if character == "-" {
                            attributeId.append("_")
                        } else {
                            attributeId.append(character.lowercased())
                        }
                    }
            
                    return attributeId
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
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `db.elasticsearch.cluster.name`: Deprecated, use `db.namespace` instead. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Example: `e9106fc68e3044f0b1475b04bf4ffd5f`
                    @available(*, deprecated, message: "Replaced by `db.namespace`.")
                    public var name: Self.Key<String> { .init(name: OTelAttribute.db.elasticsearch.cluster.name) }
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
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `db.elasticsearch.node.name`: Represents the human-readable identifier of the node/instance to which a request was routed. 
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: string
                    /// 
                    /// - Example: `instance-0000000001`
                    public var name: Self.Key<String> { .init(name: OTelAttribute.db.elasticsearch.node.name) }
                }
            
            
            }
        }
    
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
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `db.instance.id`: Deprecated, no general replacement at this time. For Elasticsearch, use `db.elasticsearch.node.name` instead.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `mysql-e26b99z.example.com`
                @available(*, deprecated, message: "Deprecated, no general replacement at this time. For Elasticsearch, use `db.elasticsearch.node.name` instead.")
                public var id: Self.Key<String> { .init(name: OTelAttribute.db.instance.id) }
            }
        
        
        }
    
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
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `db.jdbc.driver_classname`: Removed, no replacement at this time.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `org.postgresql.Driver`
                ///     - `com.microsoft.sqlserver.jdbc.SQLServerDriver`
                @available(*, deprecated, message: "Removed as not used.")
                public var driverClassname: Self.Key<String> { .init(name: OTelAttribute.db.jdbc.driverClassname) }
            }
        
        
        }
    
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
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `db.mongodb.collection`: Deprecated, use `db.collection.name` instead.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `mytable`
                @available(*, deprecated, message: "Replaced by `db.collection.name`.")
                public var collection: Self.Key<String> { .init(name: OTelAttribute.db.mongodb.collection) }
            }
        
        
        }
    
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
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `db.mssql.instance_name`: Deprecated, SQL Server instance is now populated as a part of `db.namespace` attribute.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `MSSQLSERVER`
                @available(*, deprecated, message: "Deprecated, no replacement at this time.")
                public var instanceName: Self.Key<String> { .init(name: OTelAttribute.db.mssql.instanceName) }
            }
        
        
        }
    
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
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
            /// `db.operation.parameter`: A database operation parameter, with `<key>` being the parameter name, and the attribute value being a string representation of the parameter value. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: templateString
            /// 
            /// If a parameter has no name and instead is referenced only by index, then `<key>` SHOULD be the 0-based index. If `db.query.text` is also captured, then `db.operation.parameter.<key>` SHOULD match up with the parameterized placeholders present in `db.query.text`. This attribute has stability level RELEASE CANDIDATE. 
            /// 
            /// - Examples:
            ///     - `someval`
            ///     - `55`
            public var parameter: ParameterAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            public struct ParameterAttributes {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public mutating func set(_ key: String, to value: String) {
                    let attributeId = self.attributeId(forKey: key)
                    self.attributes[attributeId] = value
                }
            
                private func attributeId(forKey key: String) -> String {
                    var attributeId = "db.operation.parameter."
            
                    for index in key.indices {
                        let character = key[index]
            
                        if character == "-" {
                            attributeId.append("_")
                        } else {
                            attributeId.append(character.lowercased())
                        }
                    }
            
                    return attributeId
                }
            }
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `db.operation.name`: The name of the operation or command being executed. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// It is RECOMMENDED to capture the value as provided by the application without attempting to do any case normalization.  The operation name SHOULD NOT be extracted from `db.query.text`, unless the query format is known to only ever have a single operation name present.  For batch operations, if the individual operations are known to have the same operation name then that operation name SHOULD be used prepended by `BATCH `, otherwise `db.operation.name` SHOULD be `BATCH` or some other database system specific term if more applicable.  This attribute has stability level RELEASE CANDIDATE. 
                /// 
                /// - Examples:
                ///     - `findAndModify`
                ///     - `HMSET`
                ///     - `SELECT`
                public var name: Self.Key<String> { .init(name: OTelAttribute.db.operation.name) }
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
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `db.operation.batch.size`: The number of queries included in a batch operation.
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: int
                    /// 
                    /// Operations are only considered batches when they contain two or more operations, and so `db.operation.batch.size` SHOULD never be `1`. This attribute has stability level RELEASE CANDIDATE. 
                    /// 
                    /// - Examples:
                    ///     - `2`
                    ///     - `3`
                    ///     - `4`
                    public var size: Self.Key<Int> { .init(name: OTelAttribute.db.operation.batch.size) }
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
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
            /// `db.query.parameter`: A query parameter used in `db.query.text`, with `<key>` being the parameter name, and the attribute value being a string representation of the parameter value. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: templateString
            /// 
            /// - Examples:
            ///     - `someval`
            ///     - `55`
            public var parameter: ParameterAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            public struct ParameterAttributes {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public mutating func set(_ key: String, to value: String) {
                    let attributeId = self.attributeId(forKey: key)
                    self.attributes[attributeId] = value
                }
            
                private func attributeId(forKey key: String) -> String {
                    var attributeId = "db.query.parameter."
            
                    for index in key.indices {
                        let character = key[index]
            
                        if character == "-" {
                            attributeId.append("_")
                        } else {
                            attributeId.append(character.lowercased())
                        }
                    }
            
                    return attributeId
                }
            }
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `db.query.summary`: Low cardinality representation of a database query text. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// `db.query.summary` provides static summary of the query text. It describes a class of database queries and is useful as a grouping key, especially when analyzing telemetry for database calls involving complex queries. Summary may be available to the instrumentation through instrumentation hooks or other means. If it is not available, instrumentations that support query parsing SHOULD generate a summary following [Generating query summary](../../docs/database/database-spans.md#generating-a-summary-of-the-query-text) section. This attribute has stability level RELEASE CANDIDATE. 
                /// 
                /// - Examples:
                ///     - `SELECT wuser_table`
                ///     - `INSERT shipping_details SELECT orders`
                ///     - `get user by id`
                public var summary: Self.Key<String> { .init(name: OTelAttribute.db.query.summary) }
        
                /// `db.query.text`: The database query being executed. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// For sanitization see [Sanitization of `db.query.text`](../../docs/database/database-spans.md#sanitization-of-dbquerytext). For batch operations, if the individual operations are known to have the same query text then that query text SHOULD be used, otherwise all of the individual query texts SHOULD be concatenated with separator `; ` or some other database system specific separator if more applicable. Even though parameterized query text can potentially have sensitive data, by using a parameterized query the user is giving a strong signal that any sensitive data will be passed as parameter values, and the benefit to observability of capturing the static part of the query text by default outweighs the risk. This attribute has stability level RELEASE CANDIDATE. 
                /// 
                /// - Examples:
                ///     - `SELECT * FROM wuser_table where username = ?`
                ///     - `SET mykey ?`
                public var text: Self.Key<String> { .init(name: OTelAttribute.db.query.text) }
            }
        
        
        }
    
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
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `db.redis.database_index`: Deprecated, use `db.namespace` instead.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Examples:
                ///     - `0`
                ///     - `1`
                ///     - `15`
                @available(*, deprecated, message: "Replaced by `db.namespace`.")
                public var databaseIndex: Self.Key<Int> { .init(name: OTelAttribute.db.redis.databaseIndex) }
            }
        
        
        }
    
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
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `db.response.returned_rows`: Number of rows returned by the operation.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Examples:
                ///     - `10`
                ///     - `30`
                ///     - `1000`
                public var returnedRows: Self.Key<Int> { .init(name: OTelAttribute.db.response.returnedRows) }
        
                /// `db.response.status_code`: Database response status code.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// The status code returned by the database. Usually it represents an error code, but may also represent partial success, warning, or differentiate between various types of successful outcomes. Semantic conventions for individual database systems SHOULD document what `db.response.status_code` means in the context of that system. This attribute has stability level RELEASE CANDIDATE. 
                /// 
                /// - Examples:
                ///     - `102`
                ///     - `ORA-17002`
                ///     - `08P01`
                ///     - `404`
                public var statusCode: Self.Key<String> { .init(name: OTelAttribute.db.response.statusCode) }
            }
        
        
        }
    
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
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `db.sql.table`: Deprecated, use `db.collection.name` instead.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `mytable`
                @available(*, deprecated, message: "Replaced by `db.collection.name`.")
                public var table: Self.Key<String> { .init(name: OTelAttribute.db.sql.table) }
            }
        
        
        }
    }
}