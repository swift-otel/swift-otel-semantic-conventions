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
    /// `hw` namespace
    public enum hw {
        /// `hw.bios_version` **UNSTABLE**: BIOS version of the hardware component
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `1.2.3`
        public static let biosVersion = "hw.bios_version"

        /// `hw.driver_version` **UNSTABLE**: Driver version for the hardware component
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `10.2.1-3`
        public static let driverVersion = "hw.driver_version"

        /// `hw.firmware_version` **UNSTABLE**: Firmware version of the hardware component
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `2.0.1`
        public static let firmwareVersion = "hw.firmware_version"

        /// `hw.id` **UNSTABLE**: An identifier for the hardware component, unique within the monitored host
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `win32battery_battery_testsysa33_1`
        public static let id = "hw.id"

        /// `hw.limit_type` **UNSTABLE**: Type of limit for hardware components
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
        public static let limitType = "hw.limit_type"

        /// `hw.model` **UNSTABLE**: Descriptive model name of the hardware component
        ///
        /// - Stability: development
        /// - Type: string
        /// - Examples:
        ///     - `PERC H740P`
        ///     - `Intel(R) Core(TM) i7-10700K`
        ///     - `Dell XPS 15 Battery`
        public static let model = "hw.model"

        /// `hw.name` **UNSTABLE**: An easily-recognizable name for the hardware component
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `eth0`
        public static let name = "hw.name"

        /// `hw.parent` **UNSTABLE**: Unique identifier of the parent component (typically the `hw.id` attribute of the enclosure, or disk controller)
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `dellStorage_perc_0`
        public static let parent = "hw.parent"

        /// `hw.sensor_location` **UNSTABLE**: Location of the sensor
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
        public static let sensorLocation = "hw.sensor_location"

        /// `hw.serial_number` **UNSTABLE**: Serial number of the hardware component
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `CNFCP0123456789`
        public static let serialNumber = "hw.serial_number"

        /// `hw.state` **UNSTABLE**: The current state of the component
        ///
        /// - Stability: development
        /// - Type: enum
        ///     - `degraded`: Degraded
        ///     - `failed`: Failed
        ///     - `needs_cleaning`: Needs Cleaning
        ///     - `ok`: OK
        ///     - `predicted_failure`: Predicted Failure
        public static let state = "hw.state"

        /// `hw.type` **UNSTABLE**: Type of the component
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
        public static let `type` = "hw.type"

        /// `hw.vendor` **UNSTABLE**: Vendor name of the hardware component
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
        public static let vendor = "hw.vendor"

        /// `hw.battery` namespace
        public enum battery {
            /// `hw.battery.capacity` **UNSTABLE**: Design capacity in Watts-hours or Amper-hours
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `9.3Ah`
            ///     - `50Wh`
            public static let capacity = "hw.battery.capacity"

            /// `hw.battery.chemistry` **UNSTABLE**: Battery [chemistry](https://schemas.dmtf.org/wbem/cim-html/2.31.0/CIM_Battery.html), e.g. Lithium-Ion, Nickel-Cadmium, etc.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `Li-ion`
            ///     - `NiMH`
            public static let chemistry = "hw.battery.chemistry"

            /// `hw.battery.state` **UNSTABLE**: The current state of the battery
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `charging`: Charging
            ///     - `discharging`: Discharging
            public static let state = "hw.battery.state"
        }

        /// `hw.enclosure` namespace
        public enum enclosure {
            /// `hw.enclosure.type` **UNSTABLE**: Type of the enclosure (useful for modular systems)
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `Computer`
            ///     - `Storage`
            ///     - `Switch`
            public static let `type` = "hw.enclosure.type"
        }

        /// `hw.gpu` namespace
        public enum gpu {
            /// `hw.gpu.task` **UNSTABLE**: Type of task the GPU is performing
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `decoder`: Decoder
            ///     - `encoder`: Encoder
            ///     - `general`: General
            public static let task = "hw.gpu.task"
        }

        /// `hw.logical_disk` namespace
        public enum logicalDisk {
            /// `hw.logical_disk.raid_level` **UNSTABLE**: RAID Level of the logical disk
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `RAID0+1`
            ///     - `RAID5`
            ///     - `RAID10`
            public static let raidLevel = "hw.logical_disk.raid_level"

            /// `hw.logical_disk.state` **UNSTABLE**: State of the logical disk space usage
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `used`: Used
            ///     - `free`: Free
            public static let state = "hw.logical_disk.state"
        }

        /// `hw.memory` namespace
        public enum memory {
            /// `hw.memory.type` **UNSTABLE**: Type of the memory module
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `DDR4`
            ///     - `DDR5`
            ///     - `LPDDR5`
            public static let `type` = "hw.memory.type"
        }

        /// `hw.network` namespace
        public enum network {
            /// `hw.network.logical_addresses` **UNSTABLE**: Logical addresses of the adapter (e.g. IP address, or WWPN)
            ///
            /// - Stability: development
            /// - Type: stringArray
            public static let logicalAddresses = "hw.network.logical_addresses"

            /// `hw.network.physical_address` **UNSTABLE**: Physical address of the adapter (e.g. MAC address, or WWNN)
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `00-90-F5-E9-7B-36`
            public static let physicalAddress = "hw.network.physical_address"
        }

        /// `hw.physical_disk` namespace
        public enum physicalDisk {
            /// `hw.physical_disk.smart_attribute` **UNSTABLE**: [S.M.A.R.T.](https://wikipedia.org/wiki/S.M.A.R.T.) (Self-Monitoring, Analysis, and Reporting Technology) attribute of the physical disk
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `Spin Retry Count`
            ///     - `Seek Error Rate`
            ///     - `Raw Read Error Rate`
            public static let smartAttribute = "hw.physical_disk.smart_attribute"

            /// `hw.physical_disk.state` **UNSTABLE**: State of the physical disk endurance utilization
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `remaining`: Remaining
            public static let state = "hw.physical_disk.state"

            /// `hw.physical_disk.type` **UNSTABLE**: Type of the physical disk
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `HDD`
            ///     - `SSD`
            ///     - `10K`
            public static let `type` = "hw.physical_disk.type"
        }

        /// `hw.tape_drive` namespace
        public enum tapeDrive {
            /// `hw.tape_drive.operation_type` **UNSTABLE**: Type of tape drive operation
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `mount`: Mount
            ///     - `unmount`: Unmount
            ///     - `clean`: Clean
            public static let operationType = "hw.tape_drive.operation_type"
        }
    }
    #endif
}
