// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `dotnet` namespace
    public var dotnet: DotnetAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct DotnetAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
    
        }
    
        /// `dotnet.gc` namespace
        public var gc: GcAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct GcAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
        
            }
        
            /// `dotnet.gc.heap` namespace
            public var heap: HeapAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct HeapAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
            
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
                    /// `dotnet.gc.heap.generation`: Name of the garbage collector managed heap generation.
                    /// 
                    /// - Stability: experimental
                    /// 
                    /// - Type: enum
                    ///     - `gen0`: Generation 0
                    ///     - `gen1`: Generation 1
                    ///     - `gen2`: Generation 2
                    ///     - `loh`: Large Object Heap
                    ///     - `poh`: Pinned Object Heap
                    /// 
                    /// - Examples:
                    ///     - `gen0`
                    ///     - `gen1`
                    ///     - `gen2`
                    public var generation: Self.Key<GenerationEnum> { .init(name: OTelAttribute.dotnet.gc.heap.generation) }
                    
                    public struct GenerationEnum: SpanAttributeConvertible {
                        private let rawValue: String
                        /// `gen0`: Generation 0
                        public static let gen0 = Self.init(rawValue: "gen0")
                        /// `gen1`: Generation 1
                        public static let gen1 = Self.init(rawValue: "gen1")
                        /// `gen2`: Generation 2
                        public static let gen2 = Self.init(rawValue: "gen2")
                        /// `loh`: Large Object Heap
                        public static let loh = Self.init(rawValue: "loh")
                        /// `poh`: Pinned Object Heap
                        public static let poh = Self.init(rawValue: "poh")
                        public func toSpanAttribute() -> Tracing.SpanAttribute {
                            return .string(self.rawValue)
                        }
                    }
                }
            
            
            }
        }
    }
}