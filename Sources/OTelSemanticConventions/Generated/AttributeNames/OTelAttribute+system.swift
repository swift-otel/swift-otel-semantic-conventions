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
    /// `system` namespace
    public enum system {
        /// `system.device` **UNSTABLE**: Deprecated, use `system.device.name` instead.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `(identifier)`
        @available(*, deprecated, renamed: "OTelAttribute.system.device.name")
        public static let _device = "system.device"

        /// `system.cpu` namespace
        public enum cpu {
            /// `system.cpu.logical_number` **UNSTABLE**: Deprecated, use `cpu.logical_number` instead.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `1`
            @available(*, deprecated, renamed: "OTelAttribute.cpu.logicalNumber")
            public static let logicalNumber = "system.cpu.logical_number"

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
            @available(*, deprecated, renamed: "OTelAttribute.cpu.mode")
            public static let state = "system.cpu.state"
        }

        /// `system.device` namespace
        public enum device {
            /// `system.device.name` **UNSTABLE**: The OS level identifier for a device, such as disk, partition or network interface.
            ///
            /// - Stability: releaseCandidate
            /// - Type: string
            /// - Examples:
            ///     - `/dev/sda`
            ///     - `eth0`
            ///     - `\network-drive`
            public static let name = "system.device.name"
        }

        /// `system.filesystem` namespace
        public enum filesystem {
            /// `system.filesystem.mode` **UNSTABLE**: The filesystem mode
            ///
            /// - Stability: releaseCandidate
            /// - Type: string
            /// - Example: `rw, ro`
            public static let mode = "system.filesystem.mode"

            /// `system.filesystem.mountpoint` **UNSTABLE**: The filesystem mount path
            ///
            /// - Stability: releaseCandidate
            /// - Type: string
            /// - Example: `/mnt/data`
            public static let mountpoint = "system.filesystem.mountpoint"

            /// `system.filesystem.state` **UNSTABLE**: The filesystem state
            ///
            /// - Stability: releaseCandidate
            /// - Type: enum
            ///     - `used`
            ///     - `free`
            ///     - `reserved`
            /// - Example: `used`
            public static let state = "system.filesystem.state"

            /// `system.filesystem.type` **UNSTABLE**: The filesystem type
            ///
            /// - Stability: releaseCandidate
            /// - Type: enum
            ///     - `fat32`
            ///     - `exfat`
            ///     - `ntfs`
            ///     - `refs`
            ///     - `hfsplus`
            ///     - `ext4`
            /// - Example: `ext4`
            public static let `type` = "system.filesystem.type"
        }

        /// `system.memory` namespace
        public enum memory {
            /// `system.memory.state` **UNSTABLE**: The memory state
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `used`: Actual used virtual memory in bytes.
            ///     - `available`: An estimate of how much memory is available for starting new applications, without causing swapping.
            ///     - `free`
            ///     - `shared`
            ///     - `buffers`
            ///     - `cached`
            /// - Examples:
            ///     - `used`
            ///     - `available`
            public static let state = "system.memory.state"

            /// `system.memory.linux` namespace
            public enum linux {
                /// `system.memory.linux.hugepages` namespace
                public enum hugepages {
                    /// `system.memory.linux.hugepages.state` **UNSTABLE**: The Linux HugePages memory state
                    ///
                    /// - Stability: releaseCandidate
                    /// - Type: enum
                    ///     - `free`
                    ///     - `used`
                    /// - Examples:
                    ///     - `free`
                    ///     - `used`
                    public static let state = "system.memory.linux.hugepages.state"
                }

                /// `system.memory.linux.slab` namespace
                public enum slab {
                    /// `system.memory.linux.slab.state` **UNSTABLE**: The Linux Slab memory state
                    ///
                    /// - Stability: releaseCandidate
                    /// - Type: enum
                    ///     - `reclaimable`
                    ///     - `unreclaimable`
                    /// - Examples:
                    ///     - `reclaimable`
                    ///     - `unreclaimable`
                    public static let state = "system.memory.linux.slab.state"
                }
            }
        }

        /// `system.network` namespace
        public enum network {
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
            @available(*, deprecated, renamed: "OTelAttribute.network.connection.state")
            public static let state = "system.network.state"
        }

        /// `system.paging` namespace
        public enum paging {
            /// `system.paging.direction` **UNSTABLE**: The paging access direction
            ///
            /// - Stability: releaseCandidate
            /// - Type: enum
            ///     - `in`
            ///     - `out`
            /// - Example: `in`
            public static let direction = "system.paging.direction"

            /// `system.paging.state` **UNSTABLE**: The memory paging state
            ///
            /// - Stability: releaseCandidate
            /// - Type: enum
            ///     - `used`
            ///     - `free`
            /// - Example: `free`
            public static let state = "system.paging.state"

            /// `system.paging.type` **UNSTABLE**: Deprecated, use `system.paging.fault.type` instead.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `major`
            ///     - `minor`
            /// - Example: `minor`
            @available(*, deprecated, renamed: "OTelAttribute.system.paging.fault.type")
            public static let `type` = "system.paging.type"

            /// `system.paging.fault` namespace
            public enum fault {
                /// `system.paging.fault.type` **UNSTABLE**: The paging fault type
                ///
                /// - Stability: releaseCandidate
                /// - Type: enum
                ///     - `major`
                ///     - `minor`
                /// - Example: `minor`
                public static let `type` = "system.paging.fault.type"
            }
        }

        /// `system.process` namespace
        public enum process {
            /// `system.process.status` **UNSTABLE**: Deprecated, use `process.state` instead.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `running`
            ///     - `sleeping`
            ///     - `stopped`
            ///     - `defunct`
            /// - Example: `running`
            @available(*, deprecated, renamed: "OTelAttribute.process.state")
            public static let status = "system.process.status"
        }

        /// `system.processes` namespace
        public enum processes {
            /// `system.processes.status` **UNSTABLE**: Deprecated, use `process.state` instead.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `running`
            ///     - `sleeping`
            ///     - `stopped`
            ///     - `defunct`
            /// - Example: `running`
            @available(*, deprecated, renamed: "OTelAttribute.process.state")
            public static let status = "system.processes.status"
        }
    }
    #endif
}
