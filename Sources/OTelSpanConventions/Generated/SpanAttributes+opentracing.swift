// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `opentracing` namespace
    public var opentracing: OpentracingAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct OpentracingAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `opentracing.ref_type`: Parent-child Reference type
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `child_of`: The parent Span depends on the child Span in some capacity
            ///     - `follows_from`: The parent Span doesn't depend in any way on the result of the child Span
            /// 
            /// The causal relationship between a child Span and a parent Span. 
            public var refType: Self.Key<RefTypeEnum> { .init(name: OTelAttribute.opentracing.refType) }
            
            public struct RefTypeEnum: SpanAttributeConvertible {
                private let rawValue: String
                /// `child_of`: The parent Span depends on the child Span in some capacity
                public static let childOf = Self.init(rawValue: "child_of")
                /// `follows_from`: The parent Span doesn't depend in any way on the result of the child Span
                public static let followsFrom = Self.init(rawValue: "follows_from")
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(self.rawValue)
                }
            }
        }
    
    
    }
}