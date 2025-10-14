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
    /// `host` namespace
    public enum host {
        /// `host.arch` **UNSTABLE**: The CPU architecture the host system is running on.
        ///
        /// - Stability: development
        /// - Type: enum
        ///     - `amd64`: AMD64
        ///     - `arm32`: ARM32
        ///     - `arm64`: ARM64
        ///     - `ia64`: Itanium
        ///     - `ppc32`: 32-bit PowerPC
        ///     - `ppc64`: 64-bit PowerPC
        ///     - `s390x`: IBM z/Architecture
        ///     - `x86`: 32-bit x86
        public static let arch = "host.arch"

        /// `host.id` **UNSTABLE**: Unique host ID. For Cloud, this must be the instance_id assigned by the cloud provider. For non-containerized systems, this should be the `machine-id`. See the table below for the sources to use to determine the `machine-id` based on operating system.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `fdbf79e8af94cb7f9e8df36789187052`
        public static let id = "host.id"

        /// `host.ip` **UNSTABLE**: Available IP addresses of the host, excluding loopback interfaces.
        ///
        /// - Stability: development
        /// - Type: stringArray
        ///
        /// IPv4 Addresses MUST be specified in dotted-quad notation. IPv6 addresses MUST be specified in the [RFC 5952](https://www.rfc-editor.org/rfc/rfc5952.html) format.
        public static let ip = "host.ip"

        /// `host.mac` **UNSTABLE**: Available MAC addresses of the host, excluding loopback interfaces.
        ///
        /// - Stability: development
        /// - Type: stringArray
        ///
        /// MAC Addresses MUST be represented in [IEEE RA hexadecimal form](https://standards.ieee.org/wp-content/uploads/import/documents/tutorials/eui.pdf): as hyphen-separated octets in uppercase hexadecimal form from most to least significant.
        public static let mac = "host.mac"

        /// `host.name` **UNSTABLE**: Name of the host. On Unix systems, it may contain what the hostname command returns, or the fully qualified hostname, or another name specified by the user.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `opentelemetry-test`
        public static let name = "host.name"

        /// `host.type` **UNSTABLE**: Type of host. For Cloud, this must be the machine type.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `n1-standard-1`
        public static let `type` = "host.type"

        /// `host.cpu` namespace
        public enum cpu {
            /// `host.cpu.family` **UNSTABLE**: Family or generation of the CPU.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `6`
            ///     - `PA-RISC 1.1e`
            public static let family = "host.cpu.family"

            /// `host.cpu.stepping` **UNSTABLE**: Stepping or core revisions.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `1`
            ///     - `r1p1`
            public static let stepping = "host.cpu.stepping"

            /// `host.cpu.cache` namespace
            public enum cache {
                /// `host.cpu.cache.l2` namespace
                public enum l2 {
                    /// `host.cpu.cache.l2.size` **UNSTABLE**: The amount of level 2 memory cache available to the processor (in Bytes).
                    ///
                    /// - Stability: development
                    /// - Type: int
                    /// - Example: `12288000`
                    public static let size = "host.cpu.cache.l2.size"
                }
            }

            /// `host.cpu.model` namespace
            public enum model {
                /// `host.cpu.model.id` **UNSTABLE**: Model identifier. It provides more granular information about the CPU, distinguishing it from other CPUs within the same family.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `6`
                ///     - `9000/778/B180L`
                public static let id = "host.cpu.model.id"

                /// `host.cpu.model.name` **UNSTABLE**: Model designation of the processor.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `11th Gen Intel(R) Core(TM) i7-1185G7 @ 3.00GHz`
                public static let name = "host.cpu.model.name"
            }

            /// `host.cpu.vendor` namespace
            public enum vendor {
                /// `host.cpu.vendor.id` **UNSTABLE**: Processor manufacturer identifier. A maximum 12-character string.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `GenuineIntel`
                ///
                /// [CPUID](https://wiki.osdev.org/CPUID) command returns the vendor ID string in EBX, EDX and ECX registers. Writing these to memory in this order results in a 12-character string.
                public static let id = "host.cpu.vendor.id"
            }
        }

        /// `host.image` namespace
        public enum image {
            /// `host.image.id` **UNSTABLE**: VM image ID or host OS image ID. For Cloud, this value is from the provider.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `ami-07b06b442921831e5`
            public static let id = "host.image.id"

            /// `host.image.name` **UNSTABLE**: Name of the VM image or OS install the host was instantiated from.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `infra-ami-eks-worker-node-7d4ec78312`
            ///     - `CentOS-8-x86_64-1905`
            public static let name = "host.image.name"

            /// `host.image.version` **UNSTABLE**: The version string of the VM image or host OS as defined in [Version Attributes](/docs/resource/README.md#version-attributes).
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `0.1`
            public static let version = "host.image.version"
        }
    }
    #endif
}
