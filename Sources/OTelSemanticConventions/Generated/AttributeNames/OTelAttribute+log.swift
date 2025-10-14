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
    /// `log` namespace
    public enum log {
        /// `log.iostream` **UNSTABLE**: The stream associated with the log. See below for a list of well-known values.
        ///
        /// - Stability: development
        /// - Type: enum
        ///     - `stdout`: Logs from stdout stream
        ///     - `stderr`: Events from stderr stream
        public static let iostream = "log.iostream"

        /// `log.file` namespace
        public enum file {
            /// `log.file.name` **UNSTABLE**: The basename of the file.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `audit.log`
            public static let name = "log.file.name"

            /// `log.file.name_resolved` **UNSTABLE**: The basename of the file, with symlinks resolved.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `uuid.log`
            public static let nameResolved = "log.file.name_resolved"

            /// `log.file.path` **UNSTABLE**: The full path to the file.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `/var/log/mysql/audit.log`
            public static let path = "log.file.path"

            /// `log.file.path_resolved` **UNSTABLE**: The full path to the file, with symlinks resolved.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `/var/lib/docker/uuid.log`
            public static let pathResolved = "log.file.path_resolved"
        }

        /// `log.record` namespace
        public enum record {
            /// `log.record.original` **UNSTABLE**: The complete original Log Record.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `77 <86>1 2015-08-06T21:58:59.694Z 192.168.2.133 inactive - - - Something happened`
            ///     - `[INFO] 8/3/24 12:34:56 Something happened`
            ///
            /// This value MAY be added when processing a Log Record which was originally transmitted as a string or equivalent data type AND the Body field of the Log Record does not contain the same value. (e.g. a syslog or a log record read from a file.)
            public static let original = "log.record.original"

            /// `log.record.uid` **UNSTABLE**: A unique identifier for the Log Record.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `01ARZ3NDEKTSV4RRFFQ69G5FAV`
            ///
            /// If an id is provided, other log records with the same id will be considered duplicates and can be removed safely. This means, that two distinguishable log records MUST have different values.
            /// The id MAY be an [Universally Unique Lexicographically Sortable Identifier (ULID)](https://github.com/ulid/spec), but other identifiers (e.g. UUID) may be used as needed.
            public static let uid = "log.record.uid"
        }
    }
    #endif
}
