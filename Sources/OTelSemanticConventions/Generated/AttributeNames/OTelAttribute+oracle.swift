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
    /// `oracle` namespace
    public enum oracle {
        /// `oracle.db` namespace
        public enum db {
            /// `oracle.db.domain` **UNSTABLE**: The database domain associated with the connection.
            ///
            /// - Stability: releaseCandidate
            /// - Type: string
            /// - Examples:
            ///     - `example.com`
            ///     - `corp.internal`
            ///     - `prod.db.local`
            ///
            /// This attribute SHOULD be set to the value of the `DB_DOMAIN` initialization parameter,
            /// as exposed in `v$parameter`. `DB_DOMAIN` defines the domain portion of the global
            /// database name and SHOULD be configured when a database is, or may become, part of a
            /// distributed environment. Its value consists of one or more valid identifiers
            /// (alphanumeric ASCII characters) separated by periods.
            public static let domain = "oracle.db.domain"

            /// `oracle.db.name` **UNSTABLE**: The database name associated with the connection.
            ///
            /// - Stability: releaseCandidate
            /// - Type: string
            /// - Examples:
            ///     - `ORCL1`
            ///     - `FREE`
            ///
            /// This attribute SHOULD be set to the value of the parameter `DB_NAME` exposed in `v$parameter`.
            public static let name = "oracle.db.name"

            /// `oracle.db.pdb` **UNSTABLE**: The pluggable database (PDB) name associated with the connection.
            ///
            /// - Stability: releaseCandidate
            /// - Type: string
            /// - Examples:
            ///     - `PDB1`
            ///     - `FREEPDB`
            ///
            /// This attribute SHOULD reflect the PDB that the session is currently connected to.
            /// If instrumentation cannot reliably obtain the active PDB name for each operation
            /// without issuing an additional query (such as `SELECT SYS_CONTEXT`), it is
            /// RECOMMENDED to fall back to the PDB name specified at connection establishment.
            public static let pdb = "oracle.db.pdb"

            /// `oracle.db.service` **UNSTABLE**: The service name currently associated with the database connection.
            ///
            /// - Stability: releaseCandidate
            /// - Type: string
            /// - Examples:
            ///     - `order-processing-service`
            ///     - `db_low.adb.oraclecloud.com`
            ///     - `db_high.adb.oraclecloud.com`
            ///
            /// The effective service name for a connection can change during its lifetime,
            /// for example after executing sql, `ALTER SESSION`. If an instrumentation cannot reliably
            /// obtain the current service name for each operation without issuing an additional
            /// query (such as `SELECT SYS_CONTEXT`), it is RECOMMENDED to fall back to the
            /// service name originally provided at connection establishment.
            public static let service = "oracle.db.service"

            /// `oracle.db.instance` namespace
            public enum instance {
                /// `oracle.db.instance.name` **UNSTABLE**: The instance name associated with the connection in an Oracle Real Application Clusters environment.
                ///
                /// - Stability: releaseCandidate
                /// - Type: string
                /// - Examples:
                ///     - `ORCL1`
                ///     - `ORCL2`
                ///     - `ORCL3`
                ///
                /// There can be multiple instances associated with a single database service. It indicates the
                /// unique instance name to which the connection is currently bound. For non-RAC databases, this value
                /// defaults to the `oracle.db.name`.
                public static let name = "oracle.db.instance.name"
            }
        }
    }
    #endif
}
