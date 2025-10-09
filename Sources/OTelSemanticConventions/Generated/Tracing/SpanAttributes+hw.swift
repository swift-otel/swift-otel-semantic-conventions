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
    /// `hw` namespace
    public var hw: HwAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct HwAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `hw.bios_version`: BIOS version of the hardware component
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `1.2.3`
            public var biosVersion: SpanAttributeKey<String> { .init(name: OTelAttribute.hw.biosVersion) }

            /// `hw.driver_version`: Driver version for the hardware component
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `10.2.1-3`
            public var driverVersion: SpanAttributeKey<String> { .init(name: OTelAttribute.hw.driverVersion) }

            /// `hw.firmware_version`: Firmware version of the hardware component
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `2.0.1`
            public var firmwareVersion: SpanAttributeKey<String> { .init(name: OTelAttribute.hw.firmwareVersion) }

            /// `hw.id`: An identifier for the hardware component, unique within the monitored host
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `win32battery_battery_testsysa33_1`
            public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.hw.id) }

            /// `hw.limit_type`: Type of limit for hardware components
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `critical`: Critical
            ///     - `degraded`: Degraded
            ///     - `high.critical`: High Critical
            ///     - `high.degraded`: High Degraded
            ///     - `low.critical`: Low Critical
            ///     - `low.degraded`: Low Degraded
            ///     - `max`: Maximum
            ///     - `throttled`: Throttled
            ///     - `turbo`: Turbo
            public var limitType: SpanAttributeKey<LimitTypeEnum> { .init(name: OTelAttribute.hw.limitType) }

            public struct LimitTypeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                public let rawValue: String
                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    .string(self.rawValue)
                }
            }

            /// `hw.model`: Descriptive model name of the hardware component
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `PERC H740P`
            ///     - `Intel(R) Core(TM) i7-10700K`
            ///     - `Dell XPS 15 Battery`
            public var model: SpanAttributeKey<String> { .init(name: OTelAttribute.hw.model) }

            /// `hw.name`: An easily-recognizable name for the hardware component
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `eth0`
            public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.hw.name) }

            /// `hw.parent`: Unique identifier of the parent component (typically the `hw.id` attribute of the enclosure, or disk controller)
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `dellStorage_perc_0`
            public var parent: SpanAttributeKey<String> { .init(name: OTelAttribute.hw.parent) }

            /// `hw.sensor_location`: Location of the sensor
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `cpu0`
            ///     - `ps1`
            ///     - `INLET`
            ///     - `CPU0_DIE`
            ///     - `AMBIENT`
            ///     - `MOTHERBOARD`
            ///     - `PS0 V3_3`
            ///     - `MAIN_12V`
            ///     - `CPU_VCORE`
            public var sensorLocation: SpanAttributeKey<String> { .init(name: OTelAttribute.hw.sensorLocation) }

            /// `hw.serial_number`: Serial number of the hardware component
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `CNFCP0123456789`
            public var serialNumber: SpanAttributeKey<String> { .init(name: OTelAttribute.hw.serialNumber) }

            /// `hw.state`: The current state of the component
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `degraded`: Degraded
            ///     - `failed`: Failed
            ///     - `needs_cleaning`: Needs Cleaning
            ///     - `ok`: OK
            ///     - `predicted_failure`: Predicted Failure
            public var state: SpanAttributeKey<StateEnum> { .init(name: OTelAttribute.hw.state) }

            public struct StateEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                public let rawValue: String
                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    .string(self.rawValue)
                }
            }

            /// `hw.type`: Type of the component
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `battery`: Battery
            ///     - `cpu`: CPU
            ///     - `disk_controller`: Disk controller
            ///     - `enclosure`: Enclosure
            ///     - `fan`: Fan
            ///     - `gpu`: GPU
            ///     - `logical_disk`: Logical disk
            ///     - `memory`: Memory
            ///     - `network`: Network
            ///     - `physical_disk`: Physical disk
            ///     - `power_supply`: Power supply
            ///     - `tape_drive`: Tape drive
            ///     - `temperature`: Temperature
            ///     - `voltage`: Voltage
            ///
            /// Describes the category of the hardware component for which `hw.state` is being reported. For example, `hw.type=temperature` along with `hw.state=degraded` would indicate that the temperature of the hardware component has been reported as `degraded`.
            public var `type`: SpanAttributeKey<TypeEnum> { .init(name: OTelAttribute.hw.`type`) }

            public struct TypeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                public let rawValue: String
                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    .string(self.rawValue)
                }
            }

            /// `hw.vendor`: Vendor name of the hardware component
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `Dell`
            ///     - `HP`
            ///     - `Intel`
            ///     - `AMD`
            ///     - `LSI`
            ///     - `Lenovo`
            public var vendor: SpanAttributeKey<String> { .init(name: OTelAttribute.hw.vendor) }
        }

        /// `hw.battery` namespace
        public var battery: BatteryAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct BatteryAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `hw.battery.capacity`: Design capacity in Watts-hours or Amper-hours
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `9.3Ah`
                ///     - `50Wh`
                public var capacity: SpanAttributeKey<String> { .init(name: OTelAttribute.hw.battery.capacity) }

                /// `hw.battery.chemistry`: Battery [chemistry](https://schemas.dmtf.org/wbem/cim-html/2.31.0/CIM_Battery.html), e.g. Lithium-Ion, Nickel-Cadmium, etc.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `Li-ion`
                ///     - `NiMH`
                public var chemistry: SpanAttributeKey<String> { .init(name: OTelAttribute.hw.battery.chemistry) }

                /// `hw.battery.state`: The current state of the battery
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `charging`: Charging
                ///     - `discharging`: Discharging
                public var state: SpanAttributeKey<StateEnum> { .init(name: OTelAttribute.hw.battery.state) }

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

        /// `hw.enclosure` namespace
        public var enclosure: EnclosureAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct EnclosureAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `hw.enclosure.type`: Type of the enclosure (useful for modular systems)
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `Computer`
                ///     - `Storage`
                ///     - `Switch`
                public var `type`: SpanAttributeKey<String> { .init(name: OTelAttribute.hw.enclosure.`type`) }
            }
        }

        /// `hw.gpu` namespace
        public var gpu: GpuAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct GpuAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `hw.gpu.task`: Type of task the GPU is performing
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `decoder`: Decoder
                ///     - `encoder`: Encoder
                ///     - `general`: General
                public var task: SpanAttributeKey<TaskEnum> { .init(name: OTelAttribute.hw.gpu.task) }

                public struct TaskEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
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

        /// `hw.logical_disk` namespace
        public var logicalDisk: LogicalDiskAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct LogicalDiskAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `hw.logical_disk.raid_level`: RAID Level of the logical disk
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `RAID0+1`
                ///     - `RAID5`
                ///     - `RAID10`
                public var raidLevel: SpanAttributeKey<String> { .init(name: OTelAttribute.hw.logicalDisk.raidLevel) }

                /// `hw.logical_disk.state`: State of the logical disk space usage
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `used`: Used
                ///     - `free`: Free
                public var state: SpanAttributeKey<StateEnum> { .init(name: OTelAttribute.hw.logicalDisk.state) }

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

        /// `hw.memory` namespace
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

                /// `hw.memory.type`: Type of the memory module
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `DDR4`
                ///     - `DDR5`
                ///     - `LPDDR5`
                public var `type`: SpanAttributeKey<String> { .init(name: OTelAttribute.hw.memory.`type`) }
            }
        }

        /// `hw.network` namespace
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

                /// `hw.network.logical_addresses`: Logical addresses of the adapter (e.g. IP address, or WWPN)
                ///
                /// - Stability: development
                /// - Type: stringArray
                public var logicalAddresses: SpanAttributeKey<[String]> {
                    .init(name: OTelAttribute.hw.network.logicalAddresses)
                }

                /// `hw.network.physical_address`: Physical address of the adapter (e.g. MAC address, or WWNN)
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `00-90-F5-E9-7B-36`
                public var physicalAddress: SpanAttributeKey<String> {
                    .init(name: OTelAttribute.hw.network.physicalAddress)
                }
            }
        }

        /// `hw.physical_disk` namespace
        public var physicalDisk: PhysicalDiskAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct PhysicalDiskAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `hw.physical_disk.smart_attribute`: [S.M.A.R.T.](https://wikipedia.org/wiki/S.M.A.R.T.) (Self-Monitoring, Analysis, and Reporting Technology) attribute of the physical disk
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `Spin Retry Count`
                ///     - `Seek Error Rate`
                ///     - `Raw Read Error Rate`
                public var smartAttribute: SpanAttributeKey<String> {
                    .init(name: OTelAttribute.hw.physicalDisk.smartAttribute)
                }

                /// `hw.physical_disk.state`: State of the physical disk endurance utilization
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `remaining`: Remaining
                public var state: SpanAttributeKey<StateEnum> { .init(name: OTelAttribute.hw.physicalDisk.state) }

                public struct StateEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                    public let rawValue: String
                    public init(rawValue: String) {
                        self.rawValue = rawValue
                    }
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
                    }
                }

                /// `hw.physical_disk.type`: Type of the physical disk
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `HDD`
                ///     - `SSD`
                ///     - `10K`
                public var `type`: SpanAttributeKey<String> { .init(name: OTelAttribute.hw.physicalDisk.`type`) }
            }
        }

        /// `hw.tape_drive` namespace
        public var tapeDrive: TapeDriveAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct TapeDriveAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `hw.tape_drive.operation_type`: Type of tape drive operation
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `mount`: Mount
                ///     - `unmount`: Unmount
                ///     - `clean`: Clean
                public var operationType: SpanAttributeKey<OperationTypeEnum> {
                    .init(name: OTelAttribute.hw.tapeDrive.operationType)
                }

                public struct OperationTypeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
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
