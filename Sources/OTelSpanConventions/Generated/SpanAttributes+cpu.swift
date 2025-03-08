// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `cpu` namespace
    public var cpu: CpuAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct CpuAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `cpu.mode`: The mode of the CPU
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `user`
            ///     - `system`
            ///     - `nice`
            ///     - `idle`
            ///     - `iowait`
            ///     - `interrupt`
            ///     - `steal`
            ///     - `kernel`
            /// 
            /// - Examples:
            ///     - `user`
            ///     - `system`
            public var mode: Self.Key<ModeEnum> { .init(name: OTelAttribute.cpu.mode) }
            
            public struct ModeEnum: SpanAttributeConvertible {
                private let rawValue: String
                /// `user`
                public static let user = Self.init(rawValue: "user")
                /// `system`
                public static let system = Self.init(rawValue: "system")
                /// `nice`
                public static let nice = Self.init(rawValue: "nice")
                /// `idle`
                public static let idle = Self.init(rawValue: "idle")
                /// `iowait`
                public static let iowait = Self.init(rawValue: "iowait")
                /// `interrupt`
                public static let interrupt = Self.init(rawValue: "interrupt")
                /// `steal`
                public static let steal = Self.init(rawValue: "steal")
                /// `kernel`
                public static let kernel = Self.init(rawValue: "kernel")
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(self.rawValue)
                }
            }
        }
    
    
    }
}