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
    /// `system` namespace
    public var system: SystemAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
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

            /// `system.device` **UNSTABLE**: The device identifier
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `(identifier)`
            public var device: SpanAttributeKey<String> { .init(name: OTelAttribute.system.device) }
        }

        /// `system.cpu` namespace
        public var cpu: CpuAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct CpuAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `system.cpu.logical_number` **UNSTABLE**: Deprecated, use `cpu.logical_number` instead.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `1`
                @available(*, deprecated, renamed: "SpanAttributes.cpu.logicalNumber")
                public var logicalNumber: SpanAttributeKey<Int> { .init(name: OTelAttribute.system.cpu.logicalNumber) }

                /// `system.cpu.state` **UNSTABLE**: Deprecated, use `cpu.mode` instead.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `user`
                ///     - `system`
                ///     - `nice`
                ///     - `idle`
                ///     - `iowait`
                ///     - `interrupt`
                ///     - `steal`
                /// - Examples:
                ///     - `idle`
                ///     - `interrupt`
                @available(*, deprecated, renamed: "SpanAttributes.cpu.mode")
                public var state: SpanAttributeKey<StateEnum> { .init(name: OTelAttribute.system.cpu.state) }

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
        }

        /// `system.filesystem` namespace
        public var filesystem: FilesystemAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct FilesystemAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `system.filesystem.mode` **UNSTABLE**: The filesystem mode
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `rw, ro`
                public var mode: SpanAttributeKey<String> { .init(name: OTelAttribute.system.filesystem.mode) }

                /// `system.filesystem.mountpoint` **UNSTABLE**: The filesystem mount path
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `/mnt/data`
                public var mountpoint: SpanAttributeKey<String> {
                    .init(name: OTelAttribute.system.filesystem.mountpoint)
                }

                /// `system.filesystem.state` **UNSTABLE**: The filesystem state
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `used`
                ///     - `free`
                ///     - `reserved`
                /// - Example: `used`
                public var state: SpanAttributeKey<StateEnum> { .init(name: OTelAttribute.system.filesystem.state) }

                public struct StateEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                    public let rawValue: String
                    public init(rawValue: String) {
                        self.rawValue = rawValue
                    }
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
                    }
                }

                /// `system.filesystem.type` **UNSTABLE**: The filesystem type
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `fat32`
                ///     - `exfat`
                ///     - `ntfs`
                ///     - `refs`
                ///     - `hfsplus`
                ///     - `ext4`
                /// - Example: `ext4`
                public var `type`: SpanAttributeKey<TypeEnum> { .init(name: OTelAttribute.system.filesystem.`type`) }

                public struct TypeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
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

        /// `system.memory` namespace
        public var memory: MemoryAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct MemoryAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `system.memory.state` **UNSTABLE**: The memory state
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `used`: Actual used virtual memory in bytes.
                ///     - `free`
                ///     - `shared`
                ///     - `buffers`
                ///     - `cached`
                /// - Examples:
                ///     - `free`
                ///     - `cached`
                public var state: SpanAttributeKey<StateEnum> { .init(name: OTelAttribute.system.memory.state) }

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

            /// `system.memory.linux` namespace
            public var linux: LinuxAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct LinuxAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                }

                /// `system.memory.linux.slab` namespace
                public var slab: SlabAttributes {
                    get {
                        .init(attributes: self.attributes)
                    }
                    set {
                        self.attributes = newValue.attributes
                    }
                }

                @dynamicMemberLookup
                public struct SlabAttributes: SpanAttributeNamespace {
                    public var attributes: Tracing.SpanAttributes

                    public init(attributes: Tracing.SpanAttributes) {
                        self.attributes = attributes
                    }

                    public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                        public init() {}

                        /// `system.memory.linux.slab.state` **UNSTABLE**: The Linux Slab memory state
                        ///
                        /// - Stability: development
                        /// - Type: enum
                        ///     - `reclaimable`
                        ///     - `unreclaimable`
                        /// - Examples:
                        ///     - `reclaimable`
                        ///     - `unreclaimable`
                        public var state: SpanAttributeKey<StateEnum> {
                            .init(name: OTelAttribute.system.memory.linux.slab.state)
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
                }
            }
        }

        /// `system.network` namespace
        public var network: NetworkAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct NetworkAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `system.network.state` **UNSTABLE**: Deprecated, use `network.connection.state` instead.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `close`
                ///     - `close_wait`
                ///     - `closing`
                ///     - `delete`
                ///     - `established`
                ///     - `fin_wait_1`
                ///     - `fin_wait_2`
                ///     - `last_ack`
                ///     - `listen`
                ///     - `syn_recv`
                ///     - `syn_sent`
                ///     - `time_wait`
                /// - Example: `close_wait`
                @available(*, deprecated, renamed: "SpanAttributes.network.connection.state")
                public var state: SpanAttributeKey<StateEnum> { .init(name: OTelAttribute.system.network.state) }

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
        }

        /// `system.paging` namespace
        public var paging: PagingAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct PagingAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `system.paging.direction` **UNSTABLE**: The paging access direction
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `in`
                ///     - `out`
                /// - Example: `in`
                public var direction: SpanAttributeKey<DirectionEnum> {
                    .init(name: OTelAttribute.system.paging.direction)
                }

                public struct DirectionEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                    public let rawValue: String
                    public init(rawValue: String) {
                        self.rawValue = rawValue
                    }
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
                    }
                }

                /// `system.paging.state` **UNSTABLE**: The memory paging state
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `used`
                ///     - `free`
                /// - Example: `free`
                public var state: SpanAttributeKey<StateEnum> { .init(name: OTelAttribute.system.paging.state) }

                public struct StateEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                    public let rawValue: String
                    public init(rawValue: String) {
                        self.rawValue = rawValue
                    }
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
                    }
                }

                /// `system.paging.type` **UNSTABLE**: Deprecated, use `system.paging.fault.type` instead.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `major`
                ///     - `minor`
                /// - Example: `minor`
                @available(*, deprecated, renamed: "SpanAttributes.system.paging.fault.type")
                public var `type`: SpanAttributeKey<TypeEnum> { .init(name: OTelAttribute.system.paging.`type`) }

                public struct TypeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                    public let rawValue: String
                    public init(rawValue: String) {
                        self.rawValue = rawValue
                    }
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
                    }
                }
            }

            /// `system.paging.fault` namespace
            public var fault: FaultAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct FaultAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `system.paging.fault.type` **UNSTABLE**: The paging fault type
                    ///
                    /// - Stability: development
                    /// - Type: enum
                    ///     - `major`
                    ///     - `minor`
                    /// - Example: `minor`
                    public var `type`: SpanAttributeKey<TypeEnum> {
                        .init(name: OTelAttribute.system.paging.fault.`type`)
                    }

                    public struct TypeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
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
        }

        /// `system.process` namespace
        public var process: ProcessAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ProcessAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `system.process.status` **UNSTABLE**: Deprecated, use `process.state` instead.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `running`
                ///     - `sleeping`
                ///     - `stopped`
                ///     - `defunct`
                /// - Example: `running`
                @available(*, deprecated, renamed: "SpanAttributes.process.state")
                public var status: SpanAttributeKey<StatusEnum> { .init(name: OTelAttribute.system.process.status) }

                public struct StatusEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
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

        /// `system.processes` namespace
        public var processes: ProcessesAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ProcessesAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `system.processes.status` **UNSTABLE**: Deprecated, use `process.state` instead.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `running`
                ///     - `sleeping`
                ///     - `stopped`
                ///     - `defunct`
                /// - Example: `running`
                @available(*, deprecated, renamed: "SpanAttributes.process.state")
                public var status: SpanAttributeKey<StatusEnum> { .init(name: OTelAttribute.system.processes.status) }

                public struct StatusEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
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
    }
    #endif
}

#endif
