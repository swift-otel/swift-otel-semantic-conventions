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
    /// `file` namespace
    public var file: FileAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
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

            /// `file.accessed` **UNSTABLE**: Time when the file was last accessed, in ISO 8601 format.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `2021-01-01T12:00:00Z`
            ///
            /// This attribute might not be supported by some file systems — NFS, FAT32, in embedded OS, etc.
            public var accessed: SpanAttributeKey<String> { .init(name: OTelAttribute.file.accessed) }

            /// `file.attributes` **UNSTABLE**: Array of file attributes.
            ///
            /// - Stability: development
            /// - Type: stringArray
            ///
            /// Attributes names depend on the OS or file system. Here’s a non-exhaustive list of values expected for this attribute: `archive`, `compressed`, `directory`, `encrypted`, `execute`, `hidden`, `immutable`, `journaled`, `read`, `readonly`, `symbolic link`, `system`, `temporary`, `write`.
            public var attributes: SpanAttributeKey<[String]> { .init(name: OTelAttribute.file.attributes) }

            /// `file.changed` **UNSTABLE**: Time when the file attributes or metadata was last changed, in ISO 8601 format.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `2021-01-01T12:00:00Z`
            ///
            /// `file.changed` captures the time when any of the file's properties or attributes (including the content) are changed, while `file.modified` captures the timestamp when the file content is modified.
            public var changed: SpanAttributeKey<String> { .init(name: OTelAttribute.file.changed) }

            /// `file.created` **UNSTABLE**: Time when the file was created, in ISO 8601 format.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `2021-01-01T12:00:00Z`
            ///
            /// This attribute might not be supported by some file systems — NFS, FAT32, in embedded OS, etc.
            public var created: SpanAttributeKey<String> { .init(name: OTelAttribute.file.created) }

            /// `file.directory` **UNSTABLE**: Directory where the file is located. It should include the drive letter, when appropriate.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `/home/user`
            ///     - `C:\Program Files\MyApp`
            public var directory: SpanAttributeKey<String> { .init(name: OTelAttribute.file.directory) }

            /// `file.extension` **UNSTABLE**: File extension, excluding the leading dot.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `png`
            ///     - `gz`
            ///
            /// When the file name has multiple extensions (example.tar.gz), only the last one should be captured ("gz", not "tar.gz").
            public var `extension`: SpanAttributeKey<String> { .init(name: OTelAttribute.file.`extension`) }

            /// `file.fork_name` **UNSTABLE**: Name of the fork. A fork is additional data associated with a filesystem object.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `Zone.Identifier`
            ///
            /// On Linux, a resource fork is used to store additional data with a filesystem object. A file always has at least one fork for the data portion, and additional forks may exist.
            /// On NTFS, this is analogous to an Alternate Data Stream (ADS), and the default data stream for a file is just called $DATA. Zone.Identifier is commonly used by Windows to track contents downloaded from the Internet. An ADS is typically of the form: C:\path\to\filename.extension:some_fork_name, and some_fork_name is the value that should populate `fork_name`. `filename.extension` should populate `file.name`, and `extension` should populate `file.extension`. The full path, `file.path`, will include the fork name.
            public var forkName: SpanAttributeKey<String> { .init(name: OTelAttribute.file.forkName) }

            /// `file.inode` **UNSTABLE**: Inode representing the file in the filesystem.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `256383`
            public var inode: SpanAttributeKey<String> { .init(name: OTelAttribute.file.inode) }

            /// `file.mode` **UNSTABLE**: Mode of the file in octal representation.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `0640`
            public var mode: SpanAttributeKey<String> { .init(name: OTelAttribute.file.mode) }

            /// `file.modified` **UNSTABLE**: Time when the file content was last modified, in ISO 8601 format.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `2021-01-01T12:00:00Z`
            public var modified: SpanAttributeKey<String> { .init(name: OTelAttribute.file.modified) }

            /// `file.name` **UNSTABLE**: Name of the file including the extension, without the directory.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `example.png`
            public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.file.name) }

            /// `file.path` **UNSTABLE**: Full path to the file, including the file name. It should include the drive letter, when appropriate.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `/home/alice/example.png`
            ///     - `C:\Program Files\MyApp\myapp.exe`
            public var path: SpanAttributeKey<String> { .init(name: OTelAttribute.file.path) }

            /// `file.size` **UNSTABLE**: File size in bytes.
            ///
            /// - Stability: development
            /// - Type: int
            public var size: SpanAttributeKey<Int> { .init(name: OTelAttribute.file.size) }
        }

        /// `file.group` namespace
        public var group: GroupAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct GroupAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `file.group.id` **UNSTABLE**: Primary Group ID (GID) of the file.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `1000`
                public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.file.group.id) }

                /// `file.group.name` **UNSTABLE**: Primary group name of the file.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `users`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.file.group.name) }
            }
        }

        /// `file.owner` namespace
        public var owner: OwnerAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct OwnerAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `file.owner.id` **UNSTABLE**: The user ID (UID) or security identifier (SID) of the file owner.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `1000`
                public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.file.owner.id) }

                /// `file.owner.name` **UNSTABLE**: Username of the file owner.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `root`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.file.owner.name) }
            }
        }

        /// `file.symbolic_link` namespace
        public var symbolicLink: SymbolicLinkAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct SymbolicLinkAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `file.symbolic_link.target_path` **UNSTABLE**: Path to the target of a symbolic link.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `/usr/bin/python3`
                ///
                /// This attribute is only applicable to symbolic links.
                public var targetPath: SpanAttributeKey<String> {
                    .init(name: OTelAttribute.file.symbolicLink.targetPath)
                }
            }
        }
    }
    #endif
}

#endif
