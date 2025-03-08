// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `message` namespace
    public var message: MessageAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct MessageAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `message.compressed_size`: Deprecated, use `rpc.message.compressed_size` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            @available(*, deprecated, message: "Replaced by `rpc.message.compressed_size`.")
            public var compressedSize: Self.Key<Int> { .init(name: OTelAttribute.message.compressedSize) }
    
            /// `message.id`: Deprecated, use `rpc.message.id` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            @available(*, deprecated, message: "Replaced by `rpc.message.id`.")
            public var id: Self.Key<Int> { .init(name: OTelAttribute.message.id) }
    
            /// `message.type`: Deprecated, use `rpc.message.type` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `SENT`
            ///     - `RECEIVED`
            @available(*, deprecated, message: "Replaced by `rpc.message.type`.")
            public var `type`: Self.Key<TypeEnum> { .init(name: OTelAttribute.message.`type`) }
            
            public struct TypeEnum: SpanAttributeConvertible {
                private let rawValue: String
                /// `SENT`
                public static let sent = Self.init(rawValue: "SENT")
                /// `RECEIVED`
                public static let received = Self.init(rawValue: "RECEIVED")
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(self.rawValue)
                }
            }
    
            /// `message.uncompressed_size`: Deprecated, use `rpc.message.uncompressed_size` instead.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: int
            @available(*, deprecated, message: "Replaced by `rpc.message.uncompressed_size`.")
            public var uncompressedSize: Self.Key<Int> { .init(name: OTelAttribute.message.uncompressedSize) }
        }
    
    
    }
}