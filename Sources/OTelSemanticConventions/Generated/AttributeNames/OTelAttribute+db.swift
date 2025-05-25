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
    /// `db` namespace
    public enum db {
        /// `db.namespace`: The name of the database, fully qualified within the server address and port.
        ///
        /// - Stability: stable
        ///
        /// - Type: string
        ///
        /// If a database system has multiple namespace components, they SHOULD be concatenated from the most general to the most specific namespace component, using `|` as a separator between the components. Any missing components (and their associated separators) SHOULD be omitted.
        /// Semantic conventions for individual database systems SHOULD document what `db.namespace` means in the context of that system.
        /// It is RECOMMENDED to capture the value as provided by the application without attempting to do any case normalization.
        ///
        /// - Examples:
        ///     - `customers`
        ///     - `test.users`
        public static let namespace = "db.namespace"

        /// `db.collection` namespace
        public enum collection {
            /// `db.collection.name`: The name of a collection (table, container) within the database.
            ///
            /// - Stability: stable
            ///
            /// - Type: string
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
            ///
            /// - Examples:
            ///     - `public.users`
            ///     - `customers`
            public static let name = "db.collection.name"
        }

        /// `db.operation` namespace
        public enum operation {
            /// `db.operation.name`: The name of the operation or command being executed.
            ///
            /// - Stability: stable
            ///
            /// - Type: string
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
            ///
            /// - Examples:
            ///     - `findAndModify`
            ///     - `HMSET`
            ///     - `SELECT`
            public static let name = "db.operation.name"

            /// `db.operation.batch` namespace
            public enum batch {
                /// `db.operation.batch.size`: The number of queries included in a batch operation.
                ///
                /// - Stability: stable
                ///
                /// - Type: int
                ///
                /// Operations are only considered batches when they contain two or more operations, and so `db.operation.batch.size` SHOULD never be `1`.
                ///
                /// - Examples:
                ///     - `2`
                ///     - `3`
                ///     - `4`
                public static let size = "db.operation.batch.size"
            }
        }

        /// `db.query` namespace
        public enum query {
            /// `db.query.summary`: Low cardinality summary of a database query.
            ///
            /// - Stability: stable
            ///
            /// - Type: string
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
            ///
            /// - Examples:
            ///     - `SELECT wuser_table`
            ///     - `INSERT shipping_details SELECT orders`
            ///     - `get user by id`
            public static let summary = "db.query.summary"

            /// `db.query.text`: The database query being executed.
            ///
            /// - Stability: stable
            ///
            /// - Type: string
            ///
            /// For sanitization see [Sanitization of `db.query.text`](/docs/database/database-spans.md#sanitization-of-dbquerytext).
            /// For batch operations, if the individual operations are known to have the same query text then that query text SHOULD be used, otherwise all of the individual query texts SHOULD be concatenated with separator `; ` or some other database system specific separator if more applicable.
            /// Parameterized query text SHOULD NOT be sanitized. Even though parameterized query text can potentially have sensitive data, by using a parameterized query the user is giving a strong signal that any sensitive data will be passed as parameter values, and the benefit to observability of capturing the static part of the query text by default outweighs the risk.
            ///
            /// - Examples:
            ///     - `SELECT * FROM wuser_table where username = ?`
            ///     - `SET mykey ?`
            public static let text = "db.query.text"
        }

        /// `db.response` namespace
        public enum response {
            /// `db.response.status_code`: Database response status code.
            ///
            /// - Stability: stable
            ///
            /// - Type: string
            ///
            /// The status code returned by the database. Usually it represents an error code, but may also represent partial success, warning, or differentiate between various types of successful outcomes.
            /// Semantic conventions for individual database systems SHOULD document what `db.response.status_code` means in the context of that system.
            ///
            /// - Examples:
            ///     - `102`
            ///     - `ORA-17002`
            ///     - `08P01`
            ///     - `404`
            public static let statusCode = "db.response.status_code"
        }

        /// `db.stored_procedure` namespace
        public enum storedProcedure {
            /// `db.stored_procedure.name`: The name of a stored procedure within the database.
            ///
            /// - Stability: stable
            ///
            /// - Type: string
            ///
            /// It is RECOMMENDED to capture the value as provided by the application
            /// without attempting to do any case normalization.
            ///
            /// For batch operations, if the individual operations are known to have the same
            /// stored procedure name then that stored procedure name SHOULD be used.
            ///
            /// - Example: `GetCustomer`
            public static let name = "db.stored_procedure.name"
        }

        /// `db.system` namespace
        public enum system {
            /// `db.system.name`: The database management system (DBMS) product as identified by the client instrumentation.
            ///
            /// - Stability: stable
            ///
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
            public static let name = "db.system.name"
        }
    }
}
