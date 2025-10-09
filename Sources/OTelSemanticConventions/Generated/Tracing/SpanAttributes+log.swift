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
    /// `log` namespace
    public var log: LogAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct LogAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `log.iostream`: The stream associated with the log. See below for a list of well-known values.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `stdout`: Logs from stdout stream
            ///     - `stderr`: Events from stderr stream
            public var iostream: SpanAttributeKey<IostreamEnum> { .init(name: OTelAttribute.log.iostream) }

            public struct IostreamEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                public let rawValue: String
                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    .string(self.rawValue)
                }
            }
        }

        /// `log.file` namespace
        public var file: FileAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct FileAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `log.file.name`: The basename of the file.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `audit.log`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.log.file.name) }

                /// `log.file.name_resolved`: The basename of the file, with symlinks resolved.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `uuid.log`
                public var nameResolved: SpanAttributeKey<String> { .init(name: OTelAttribute.log.file.nameResolved) }

                /// `log.file.path`: The full path to the file.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `/var/log/mysql/audit.log`
                public var path: SpanAttributeKey<String> { .init(name: OTelAttribute.log.file.path) }

                /// `log.file.path_resolved`: The full path to the file, with symlinks resolved.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `/var/lib/docker/uuid.log`
                public var pathResolved: SpanAttributeKey<String> { .init(name: OTelAttribute.log.file.pathResolved) }
            }
        }

        /// `log.record` namespace
        public var record: RecordAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct RecordAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `log.record.original`: The complete original Log Record.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `77 <86>1 2015-08-06T21:58:59.694Z 192.168.2.133 inactive - - - Something happened`
                ///     - `[INFO] 8/3/24 12:34:56 Something happened`
                ///
                /// This value MAY be added when processing a Log Record which was originally transmitted as a string or equivalent data type AND the Body field of the Log Record does not contain the same value. (e.g. a syslog or a log record read from a file.)
                public var original: SpanAttributeKey<String> { .init(name: OTelAttribute.log.record.original) }

                /// `log.record.uid`: A unique identifier for the Log Record.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `01ARZ3NDEKTSV4RRFFQ69G5FAV`
                ///
                /// If an id is provided, other log records with the same id will be considered duplicates and can be removed safely. This means, that two distinguishable log records MUST have different values.
                /// The id MAY be an [Universally Unique Lexicographically Sortable Identifier (ULID)](https://github.com/ulid/spec), but other identifiers (e.g. UUID) may be used as needed.
                public var uid: SpanAttributeKey<String> { .init(name: OTelAttribute.log.record.uid) }
            }
        }
    }
    #endif
}

#endif
