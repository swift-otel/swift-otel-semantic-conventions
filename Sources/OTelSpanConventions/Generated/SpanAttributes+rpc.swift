// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `rpc` namespace
    public var rpc: RpcAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct RpcAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `rpc.method`: The name of the (logical) method being called, must be equal to the $method part in the span name.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// This is the logical name of the method from the RPC interface perspective, which can be different from the name of any implementing method/function. The `code.function` attribute may be used to store the latter (e.g., method actually executing the call on the server side, RPC client stub method on the client side). 
            /// 
            /// - Example: `exampleMethod`
            public var method: Self.Key<String> { .init(name: OTelAttribute.rpc.method) }
    
            /// `rpc.service`: The full (logical) name of the service being called, including its package name, if applicable.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// This is the logical name of the service from the RPC interface perspective, which can be different from the name of any implementing class. The `code.namespace` attribute may be used to store the latter (despite the attribute name, it may include a class name; e.g., class with method actually executing the call on the server side, RPC client stub class on the client side). 
            /// 
            /// - Example: `myservice.EchoService`
            public var service: Self.Key<String> { .init(name: OTelAttribute.rpc.service) }
    
            /// `rpc.system`: A string identifying the remoting system. See below for a list of well-known identifiers.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `grpc`: gRPC
            ///     - `java_rmi`: Java RMI
            ///     - `dotnet_wcf`: .NET WCF
            ///     - `apache_dubbo`: Apache Dubbo
            ///     - `connect_rpc`: Connect RPC
            public var system: Self.Key<SystemEnum> { .init(name: OTelAttribute.rpc.system) }
            
            public struct SystemEnum: SpanAttributeConvertible {
                private let rawValue: String
                /// `grpc`: gRPC
                public static let grpc = Self.init(rawValue: "grpc")
                /// `java_rmi`: Java RMI
                public static let javaRmi = Self.init(rawValue: "java_rmi")
                /// `dotnet_wcf`: .NET WCF
                public static let dotnetWcf = Self.init(rawValue: "dotnet_wcf")
                /// `apache_dubbo`: Apache Dubbo
                public static let apacheDubbo = Self.init(rawValue: "apache_dubbo")
                /// `connect_rpc`: Connect RPC
                public static let connectRpc = Self.init(rawValue: "connect_rpc")
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(self.rawValue)
                }
            }
        }
    
        /// `rpc.connect_rpc` namespace
        public var connectRpc: ConnectRpcAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct ConnectRpcAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `rpc.connect_rpc.error_code`: The [error codes](https://connect.build/docs/protocol/#error-codes) of the Connect request. Error codes are always string values.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `cancelled`
                ///     - `unknown`
                ///     - `invalid_argument`
                ///     - `deadline_exceeded`
                ///     - `not_found`
                ///     - `already_exists`
                ///     - `permission_denied`
                ///     - `resource_exhausted`
                ///     - `failed_precondition`
                ///     - `aborted`
                ///     - `out_of_range`
                ///     - `unimplemented`
                ///     - `internal`
                ///     - `unavailable`
                ///     - `data_loss`
                ///     - `unauthenticated`
                public var errorCode: Self.Key<ErrorCodeEnum> { .init(name: OTelAttribute.rpc.connectRpc.errorCode) }
                
                public struct ErrorCodeEnum: SpanAttributeConvertible {
                    private let rawValue: String
                    /// `cancelled`
                    public static let cancelled = Self.init(rawValue: "cancelled")
                    /// `unknown`
                    public static let unknown = Self.init(rawValue: "unknown")
                    /// `invalid_argument`
                    public static let invalidArgument = Self.init(rawValue: "invalid_argument")
                    /// `deadline_exceeded`
                    public static let deadlineExceeded = Self.init(rawValue: "deadline_exceeded")
                    /// `not_found`
                    public static let notFound = Self.init(rawValue: "not_found")
                    /// `already_exists`
                    public static let alreadyExists = Self.init(rawValue: "already_exists")
                    /// `permission_denied`
                    public static let permissionDenied = Self.init(rawValue: "permission_denied")
                    /// `resource_exhausted`
                    public static let resourceExhausted = Self.init(rawValue: "resource_exhausted")
                    /// `failed_precondition`
                    public static let failedPrecondition = Self.init(rawValue: "failed_precondition")
                    /// `aborted`
                    public static let aborted = Self.init(rawValue: "aborted")
                    /// `out_of_range`
                    public static let outOfRange = Self.init(rawValue: "out_of_range")
                    /// `unimplemented`
                    public static let unimplemented = Self.init(rawValue: "unimplemented")
                    /// `internal`
                    public static let `internal` = Self.init(rawValue: "internal")
                    /// `unavailable`
                    public static let unavailable = Self.init(rawValue: "unavailable")
                    /// `data_loss`
                    public static let dataLoss = Self.init(rawValue: "data_loss")
                    /// `unauthenticated`
                    public static let unauthenticated = Self.init(rawValue: "unauthenticated")
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
            /// `rpc.connect_rpc.request` namespace
            public var request: RequestAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct RequestAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
                /// `rpc.connect_rpc.request.metadata`: Connect request metadata, `<key>` being the normalized Connect Metadata key (lowercase), the value being the metadata values. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: templateStringArray
                /// 
                /// Instrumentations SHOULD require an explicit configuration of which metadata values are to be captured. Including all request metadata values can be a security risk - explicit configuration helps avoid leaking sensitive information. 
                /// 
                /// - Example: `rpc.request.metadata.my-custom-metadata-attribute=["1.2.3.4", "1.2.3.5"]`
                public var metadata: MetadataAttributes {
                    get {
                        .init(attributes: self.attributes)
                    }
                    set {
                        self.attributes = newValue.attributes
                    }
                }
                
                public struct MetadataAttributes {
                    public var attributes: SpanAttributes
                
                    public init(attributes: SpanAttributes) {
                        self.attributes = attributes
                    }
                
                    public mutating func set(_ key: String, to value: [String]) {
                        let attributeId = self.attributeId(forKey: key)
                        self.attributes[attributeId] = value
                    }
                
                    private func attributeId(forKey key: String) -> String {
                        var attributeId = "rpc.connect_rpc.request.metadata."
                
                        for index in key.indices {
                            let character = key[index]
                
                            if character == "-" {
                                attributeId.append("_")
                            } else {
                                attributeId.append(character.lowercased())
                            }
                        }
                
                        return attributeId
                    }
                }
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
            
                }
            
            
            }
        
            /// `rpc.connect_rpc.response` namespace
            public var response: ResponseAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct ResponseAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
                /// `rpc.connect_rpc.response.metadata`: Connect response metadata, `<key>` being the normalized Connect Metadata key (lowercase), the value being the metadata values. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: templateStringArray
                /// 
                /// Instrumentations SHOULD require an explicit configuration of which metadata values are to be captured. Including all response metadata values can be a security risk - explicit configuration helps avoid leaking sensitive information. 
                /// 
                /// - Example: `rpc.response.metadata.my-custom-metadata-attribute=["attribute_value"]`
                public var metadata: MetadataAttributes {
                    get {
                        .init(attributes: self.attributes)
                    }
                    set {
                        self.attributes = newValue.attributes
                    }
                }
                
                public struct MetadataAttributes {
                    public var attributes: SpanAttributes
                
                    public init(attributes: SpanAttributes) {
                        self.attributes = attributes
                    }
                
                    public mutating func set(_ key: String, to value: [String]) {
                        let attributeId = self.attributeId(forKey: key)
                        self.attributes[attributeId] = value
                    }
                
                    private func attributeId(forKey key: String) -> String {
                        var attributeId = "rpc.connect_rpc.response.metadata."
                
                        for index in key.indices {
                            let character = key[index]
                
                            if character == "-" {
                                attributeId.append("_")
                            } else {
                                attributeId.append(character.lowercased())
                            }
                        }
                
                        return attributeId
                    }
                }
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
            
                }
            
            
            }
        }
    
        /// `rpc.grpc` namespace
        public var grpc: GrpcAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct GrpcAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `rpc.grpc.status_code`: The [numeric status code](https://github.com/grpc/grpc/blob/v1.33.2/doc/statuscodes.md) of the gRPC request.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `0`: OK
                ///     - `1`: CANCELLED
                ///     - `2`: UNKNOWN
                ///     - `3`: INVALID_ARGUMENT
                ///     - `4`: DEADLINE_EXCEEDED
                ///     - `5`: NOT_FOUND
                ///     - `6`: ALREADY_EXISTS
                ///     - `7`: PERMISSION_DENIED
                ///     - `8`: RESOURCE_EXHAUSTED
                ///     - `9`: FAILED_PRECONDITION
                ///     - `10`: ABORTED
                ///     - `11`: OUT_OF_RANGE
                ///     - `12`: UNIMPLEMENTED
                ///     - `13`: INTERNAL
                ///     - `14`: UNAVAILABLE
                ///     - `15`: DATA_LOSS
                ///     - `16`: UNAUTHENTICATED
                public var statusCode: Self.Key<StatusCodeEnum> { .init(name: OTelAttribute.rpc.grpc.statusCode) }
                
                public struct StatusCodeEnum: SpanAttributeConvertible {
                    private let rawValue: String
                    /// `0`: OK
                    public static let ok = Self.init(rawValue: "0")
                    /// `1`: CANCELLED
                    public static let cancelled = Self.init(rawValue: "1")
                    /// `2`: UNKNOWN
                    public static let unknown = Self.init(rawValue: "2")
                    /// `3`: INVALID_ARGUMENT
                    public static let invalidArgument = Self.init(rawValue: "3")
                    /// `4`: DEADLINE_EXCEEDED
                    public static let deadlineExceeded = Self.init(rawValue: "4")
                    /// `5`: NOT_FOUND
                    public static let notFound = Self.init(rawValue: "5")
                    /// `6`: ALREADY_EXISTS
                    public static let alreadyExists = Self.init(rawValue: "6")
                    /// `7`: PERMISSION_DENIED
                    public static let permissionDenied = Self.init(rawValue: "7")
                    /// `8`: RESOURCE_EXHAUSTED
                    public static let resourceExhausted = Self.init(rawValue: "8")
                    /// `9`: FAILED_PRECONDITION
                    public static let failedPrecondition = Self.init(rawValue: "9")
                    /// `10`: ABORTED
                    public static let aborted = Self.init(rawValue: "10")
                    /// `11`: OUT_OF_RANGE
                    public static let outOfRange = Self.init(rawValue: "11")
                    /// `12`: UNIMPLEMENTED
                    public static let unimplemented = Self.init(rawValue: "12")
                    /// `13`: INTERNAL
                    public static let `internal` = Self.init(rawValue: "13")
                    /// `14`: UNAVAILABLE
                    public static let unavailable = Self.init(rawValue: "14")
                    /// `15`: DATA_LOSS
                    public static let dataLoss = Self.init(rawValue: "15")
                    /// `16`: UNAUTHENTICATED
                    public static let unauthenticated = Self.init(rawValue: "16")
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
            /// `rpc.grpc.request` namespace
            public var request: RequestAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct RequestAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
                /// `rpc.grpc.request.metadata`: gRPC request metadata, `<key>` being the normalized gRPC Metadata key (lowercase), the value being the metadata values. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: templateStringArray
                /// 
                /// Instrumentations SHOULD require an explicit configuration of which metadata values are to be captured. Including all request metadata values can be a security risk - explicit configuration helps avoid leaking sensitive information. 
                /// 
                /// - Example: `rpc.grpc.request.metadata.my-custom-metadata-attribute=["1.2.3.4", "1.2.3.5"]`
                public var metadata: MetadataAttributes {
                    get {
                        .init(attributes: self.attributes)
                    }
                    set {
                        self.attributes = newValue.attributes
                    }
                }
                
                public struct MetadataAttributes {
                    public var attributes: SpanAttributes
                
                    public init(attributes: SpanAttributes) {
                        self.attributes = attributes
                    }
                
                    public mutating func set(_ key: String, to value: [String]) {
                        let attributeId = self.attributeId(forKey: key)
                        self.attributes[attributeId] = value
                    }
                
                    private func attributeId(forKey key: String) -> String {
                        var attributeId = "rpc.grpc.request.metadata."
                
                        for index in key.indices {
                            let character = key[index]
                
                            if character == "-" {
                                attributeId.append("_")
                            } else {
                                attributeId.append(character.lowercased())
                            }
                        }
                
                        return attributeId
                    }
                }
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
            
                }
            
            
            }
        
            /// `rpc.grpc.response` namespace
            public var response: ResponseAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }
            
            @dynamicMemberLookup
            public struct ResponseAttributes: SpanAttributeNamespace {
                public var attributes: SpanAttributes
            
                public init(attributes: SpanAttributes) {
                    self.attributes = attributes
                }
                /// `rpc.grpc.response.metadata`: gRPC response metadata, `<key>` being the normalized gRPC Metadata key (lowercase), the value being the metadata values. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: templateStringArray
                /// 
                /// Instrumentations SHOULD require an explicit configuration of which metadata values are to be captured. Including all response metadata values can be a security risk - explicit configuration helps avoid leaking sensitive information. 
                /// 
                /// - Example: `rpc.grpc.response.metadata.my-custom-metadata-attribute=["attribute_value"]`
                public var metadata: MetadataAttributes {
                    get {
                        .init(attributes: self.attributes)
                    }
                    set {
                        self.attributes = newValue.attributes
                    }
                }
                
                public struct MetadataAttributes {
                    public var attributes: SpanAttributes
                
                    public init(attributes: SpanAttributes) {
                        self.attributes = attributes
                    }
                
                    public mutating func set(_ key: String, to value: [String]) {
                        let attributeId = self.attributeId(forKey: key)
                        self.attributes[attributeId] = value
                    }
                
                    private func attributeId(forKey key: String) -> String {
                        var attributeId = "rpc.grpc.response.metadata."
                
                        for index in key.indices {
                            let character = key[index]
                
                            if character == "-" {
                                attributeId.append("_")
                            } else {
                                attributeId.append(character.lowercased())
                            }
                        }
                
                        return attributeId
                    }
                }
                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}
            
                }
            
            
            }
        }
    
        /// `rpc.jsonrpc` namespace
        public var jsonrpc: JsonrpcAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct JsonrpcAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `rpc.jsonrpc.error_code`: `error.code` property of response if it is an error response.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Examples:
                ///     - `-32700`
                ///     - `100`
                public var errorCode: Self.Key<Int> { .init(name: OTelAttribute.rpc.jsonrpc.errorCode) }
        
                /// `rpc.jsonrpc.error_message`: `error.message` property of response if it is an error response.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `Parse error`
                ///     - `User already exists`
                public var errorMessage: Self.Key<String> { .init(name: OTelAttribute.rpc.jsonrpc.errorMessage) }
        
                /// `rpc.jsonrpc.request_id`: `id` property of request or response. Since protocol allows id to be int, string, `null` or missing (for notifications), value is expected to be cast to string for simplicity. Use empty string in case of `null` value. Omit entirely if this is a notification. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `10`
                ///     - `request-7`
                ///     - ``
                public var requestId: Self.Key<String> { .init(name: OTelAttribute.rpc.jsonrpc.requestId) }
        
                /// `rpc.jsonrpc.version`: Protocol version as in `jsonrpc` property of request/response. Since JSON-RPC 1.0 doesn't specify this, the value can be omitted.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `2.0`
                ///     - `1.0`
                public var version: Self.Key<String> { .init(name: OTelAttribute.rpc.jsonrpc.version) }
            }
        
        
        }
    
        /// `rpc.message` namespace
        public var message: MessageAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
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
                /// `rpc.message.compressed_size`: Compressed size of the message in bytes.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                public var compressedSize: Self.Key<Int> { .init(name: OTelAttribute.rpc.message.compressedSize) }
        
                /// `rpc.message.id`: MUST be calculated as two different counters starting from `1` one for sent messages and one for received message.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// This way we guarantee that the values will be consistent between different implementations.
                public var id: Self.Key<Int> { .init(name: OTelAttribute.rpc.message.id) }
        
                /// `rpc.message.type`: Whether this is a received or sent message.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `SENT`
                ///     - `RECEIVED`
                public var `type`: Self.Key<TypeEnum> { .init(name: OTelAttribute.rpc.message.`type`) }
                
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
        
                /// `rpc.message.uncompressed_size`: Uncompressed size of the message in bytes.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                public var uncompressedSize: Self.Key<Int> { .init(name: OTelAttribute.rpc.message.uncompressedSize) }
            }
        
        
        }
    }
}