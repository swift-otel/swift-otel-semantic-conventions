// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `linux` namespace
    public var linux: LinuxAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct LinuxAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
    
        }
    
        /// `linux.memory` namespace
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
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
        
            }
        
            /// `linux.memory.slab` namespace
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
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `linux.memory.slab.state`: The Linux Slab memory state
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: enum
                    ///     - `reclaimable`
                    ///     - `unreclaimable`
                    /// 
                    /// - Examples:
                    ///     - `reclaimable`
                    ///     - `unreclaimable`
                    public var state: Self.Key<StateEnum> { .init(name: OTelAttribute.linux.memory.slab.state) }
                    
                    public struct StateEnum: SpanAttributeConvertible {
                        private let rawValue: String
                        /// `reclaimable`
                        public static let reclaimable = Self.init(rawValue: "reclaimable")
                        /// `unreclaimable`
                        public static let unreclaimable = Self.init(rawValue: "unreclaimable")
                        public func toSpanAttribute() -> Tracing.SpanAttribute {
                            return .string(self.rawValue)
                        }
                    }
                }
            
            
            }
        }
    }
}