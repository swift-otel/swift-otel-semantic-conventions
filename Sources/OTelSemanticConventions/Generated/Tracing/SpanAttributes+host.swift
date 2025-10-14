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
    /// `host` namespace
    public var host: HostAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct HostAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

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
            public var arch: SpanAttributeKey<ArchEnum> { .init(name: OTelAttribute.host.arch) }

            public struct ArchEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                public let rawValue: String
                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    .string(self.rawValue)
                }
            }

            /// `host.id` **UNSTABLE**: Unique host ID. For Cloud, this must be the instance_id assigned by the cloud provider. For non-containerized systems, this should be the `machine-id`. See the table below for the sources to use to determine the `machine-id` based on operating system.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `fdbf79e8af94cb7f9e8df36789187052`
            public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.host.id) }

            /// `host.ip` **UNSTABLE**: Available IP addresses of the host, excluding loopback interfaces.
            ///
            /// - Stability: development
            /// - Type: stringArray
            ///
            /// IPv4 Addresses MUST be specified in dotted-quad notation. IPv6 addresses MUST be specified in the [RFC 5952](https://www.rfc-editor.org/rfc/rfc5952.html) format.
            public var ip: SpanAttributeKey<[String]> { .init(name: OTelAttribute.host.ip) }

            /// `host.mac` **UNSTABLE**: Available MAC addresses of the host, excluding loopback interfaces.
            ///
            /// - Stability: development
            /// - Type: stringArray
            ///
            /// MAC Addresses MUST be represented in [IEEE RA hexadecimal form](https://standards.ieee.org/wp-content/uploads/import/documents/tutorials/eui.pdf): as hyphen-separated octets in uppercase hexadecimal form from most to least significant.
            public var mac: SpanAttributeKey<[String]> { .init(name: OTelAttribute.host.mac) }

            /// `host.name` **UNSTABLE**: Name of the host. On Unix systems, it may contain what the hostname command returns, or the fully qualified hostname, or another name specified by the user.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `opentelemetry-test`
            public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.host.name) }

            /// `host.type` **UNSTABLE**: Type of host. For Cloud, this must be the machine type.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `n1-standard-1`
            public var `type`: SpanAttributeKey<String> { .init(name: OTelAttribute.host.`type`) }
        }

        /// `host.cpu` namespace
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

                /// `host.cpu.family` **UNSTABLE**: Family or generation of the CPU.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `6`
                ///     - `PA-RISC 1.1e`
                public var family: SpanAttributeKey<String> { .init(name: OTelAttribute.host.cpu.family) }

                /// `host.cpu.stepping` **UNSTABLE**: Stepping or core revisions.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `1`
                ///     - `r1p1`
                public var stepping: SpanAttributeKey<String> { .init(name: OTelAttribute.host.cpu.stepping) }
            }

            /// `host.cpu.cache` namespace
            public var cache: CacheAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct CacheAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                }

                /// `host.cpu.cache.l2` namespace
                public var l2: L2Attributes {
                    get {
                        .init(attributes: self.attributes)
                    }
                    set {
                        self.attributes = newValue.attributes
                    }
                }

                @dynamicMemberLookup
                public struct L2Attributes: SpanAttributeNamespace {
                    public var attributes: Tracing.SpanAttributes

                    public init(attributes: Tracing.SpanAttributes) {
                        self.attributes = attributes
                    }

                    public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                        public init() {}

                        /// `host.cpu.cache.l2.size` **UNSTABLE**: The amount of level 2 memory cache available to the processor (in Bytes).
                        ///
                        /// - Stability: development
                        /// - Type: int
                        /// - Example: `12288000`
                        public var size: SpanAttributeKey<Int> { .init(name: OTelAttribute.host.cpu.cache.l2.size) }
                    }
                }
            }

            /// `host.cpu.model` namespace
            public var model: ModelAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct ModelAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `host.cpu.model.id` **UNSTABLE**: Model identifier. It provides more granular information about the CPU, distinguishing it from other CPUs within the same family.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Examples:
                    ///     - `6`
                    ///     - `9000/778/B180L`
                    public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.host.cpu.model.id) }

                    /// `host.cpu.model.name` **UNSTABLE**: Model designation of the processor.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `11th Gen Intel(R) Core(TM) i7-1185G7 @ 3.00GHz`
                    public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.host.cpu.model.name) }
                }
            }

            /// `host.cpu.vendor` namespace
            public var vendor: VendorAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct VendorAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `host.cpu.vendor.id` **UNSTABLE**: Processor manufacturer identifier. A maximum 12-character string.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `GenuineIntel`
                    ///
                    /// [CPUID](https://wiki.osdev.org/CPUID) command returns the vendor ID string in EBX, EDX and ECX registers. Writing these to memory in this order results in a 12-character string.
                    public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.host.cpu.vendor.id) }
                }
            }
        }

        /// `host.image` namespace
        public var image: ImageAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ImageAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `host.image.id` **UNSTABLE**: VM image ID or host OS image ID. For Cloud, this value is from the provider.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `ami-07b06b442921831e5`
                public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.host.image.id) }

                /// `host.image.name` **UNSTABLE**: Name of the VM image or OS install the host was instantiated from.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `infra-ami-eks-worker-node-7d4ec78312`
                ///     - `CentOS-8-x86_64-1905`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.host.image.name) }

                /// `host.image.version` **UNSTABLE**: The version string of the VM image or host OS as defined in [Version Attributes](/docs/resource/README.md#version-attributes).
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `0.1`
                public var version: SpanAttributeKey<String> { .init(name: OTelAttribute.host.image.version) }
            }
        }
    }
    #endif
}

#endif
