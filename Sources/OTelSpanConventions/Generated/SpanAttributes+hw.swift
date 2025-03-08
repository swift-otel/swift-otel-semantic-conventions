// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
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
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `hw.id`: An identifier for the hardware component, unique within the monitored host 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `win32battery_battery_testsysa33_1`
            public var id: Self.Key<String> { .init(name: OTelAttribute.hw.id) }
    
            /// `hw.name`: An easily-recognizable name for the hardware component 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `eth0`
            public var name: Self.Key<String> { .init(name: OTelAttribute.hw.name) }
    
            /// `hw.parent`: Unique identifier of the parent component (typically the `hw.id` attribute of the enclosure, or disk controller) 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `dellStorage_perc_0`
            public var parent: Self.Key<String> { .init(name: OTelAttribute.hw.parent) }
    
            /// `hw.state`: The current state of the component 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `ok`: Ok
            ///     - `degraded`: Degraded
            ///     - `failed`: Failed
            public var state: Self.Key<StateEnum> { .init(name: OTelAttribute.hw.state) }
            
            public struct StateEnum: SpanAttributeConvertible {
                private let rawValue: String
                /// `ok`: Ok
                public static let ok = Self.init(rawValue: "ok")
                /// `degraded`: Degraded
                public static let degraded = Self.init(rawValue: "degraded")
                /// `failed`: Failed
                public static let failed = Self.init(rawValue: "failed")
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(self.rawValue)
                }
            }
    
            /// `hw.type`: Type of the component 
            /// 
            /// - Stability: experimental
            /// 
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
            public var type: Self.Key<TypeEnum> { .init(name: OTelAttribute.hw.type) }
            
            public struct TypeEnum: SpanAttributeConvertible {
                private let rawValue: String
                /// `battery`: Battery
                public static let battery = Self.init(rawValue: "battery")
                /// `cpu`: CPU
                public static let cpu = Self.init(rawValue: "cpu")
                /// `disk_controller`: Disk controller
                public static let disk_controller = Self.init(rawValue: "disk_controller")
                /// `enclosure`: Enclosure
                public static let enclosure = Self.init(rawValue: "enclosure")
                /// `fan`: Fan
                public static let fan = Self.init(rawValue: "fan")
                /// `gpu`: GPU
                public static let gpu = Self.init(rawValue: "gpu")
                /// `logical_disk`: Logical disk
                public static let logical_disk = Self.init(rawValue: "logical_disk")
                /// `memory`: Memory
                public static let memory = Self.init(rawValue: "memory")
                /// `network`: Network
                public static let network = Self.init(rawValue: "network")
                /// `physical_disk`: Physical disk
                public static let physical_disk = Self.init(rawValue: "physical_disk")
                /// `power_supply`: Power supply
                public static let power_supply = Self.init(rawValue: "power_supply")
                /// `tape_drive`: Tape drive
                public static let tape_drive = Self.init(rawValue: "tape_drive")
                /// `temperature`: Temperature
                public static let temperature = Self.init(rawValue: "temperature")
                /// `voltage`: Voltage
                public static let voltage = Self.init(rawValue: "voltage")
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(self.rawValue)
                }
            }
        }
    
    
    }
}