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
    /// `cassandra` namespace
    public enum cassandra {
        /// `cassandra.consistency` namespace
        public enum consistency {
            /// `cassandra.consistency.level`: The consistency level of the query. Based on consistency values from [CQL](https://docs.datastax.com/en/cassandra-oss/3.0/cassandra/dml/dmlConfigConsistency.html).
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
            public static let level = "cassandra.consistency.level"
        }

        /// `cassandra.coordinator` namespace
        public enum coordinator {
            /// `cassandra.coordinator.dc`: The data center of the coordinating node for a query.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `us-west-2`
            public static let dc = "cassandra.coordinator.dc"

            /// `cassandra.coordinator.id`: The ID of the coordinating node for a query.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `be13faa2-8574-4d71-926d-27f16cf8a7af`
            public static let id = "cassandra.coordinator.id"
        }

        /// `cassandra.page` namespace
        public enum page {
            /// `cassandra.page.size`: The fetch size used for paging, i.e. how many rows will be returned at once.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `5000`
            public static let size = "cassandra.page.size"
        }

        /// `cassandra.query` namespace
        public enum query {
            /// `cassandra.query.idempotent`: Whether or not the query is idempotent.
            ///
            /// - Stability: development
            /// - Type: boolean
            public static let idempotent = "cassandra.query.idempotent"
        }

        /// `cassandra.speculative_execution` namespace
        public enum speculativeExecution {
            /// `cassandra.speculative_execution.count`: The number of times a query was speculatively executed. Not set or `0` if the query was not executed speculatively.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Examples:
            ///     - `0`
            ///     - `2`
            public static let count = "cassandra.speculative_execution.count"
        }
    }
    #endif
}
