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
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `rpc.method` **UNSTABLE**: The name of the (logical) method being called, must be equal to the $method part in the span name.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `exampleMethod`
            ///
            /// This is the logical name of the method from the RPC interface perspective, which can be different from the name of any implementing method/function. The `code.function.name` attribute may be used to store the latter (e.g., method actually executing the call on the server side, RPC client stub method on the client side).
            public var method: SpanAttributeKey<String> { .init(name: OTelAttribute.rpc.method) }

            /// `rpc.service` **UNSTABLE**: The full (logical) name of the service being called, including its package name, if applicable.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `myservice.EchoService`
            ///
            /// This is the logical name of the service from the RPC interface perspective, which can be different from the name of any implementing class. The `code.namespace` attribute may be used to store the latter (despite the attribute name, it may include a class name; e.g., class with method actually executing the call on the server side, RPC client stub class on the client side).
            public var service: SpanAttributeKey<String> { .init(name: OTelAttribute.rpc.service) }

            /// `rpc.system` **UNSTABLE**: A string identifying the remoting system. See below for a list of well-known identifiers.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `grpc`: gRPC
            ///     - `java_rmi`: Java RMI
            ///     - `dotnet_wcf`: .NET WCF
            ///     - `apache_dubbo`: Apache Dubbo
            ///     - `connect_rpc`: Connect RPC
            public var system: SpanAttributeKey<SystemEnum> { .init(name: OTelAttribute.rpc.system) }

            public struct SystemEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                public let rawValue: String
                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    .string(self.rawValue)
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
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `rpc.connect_rpc.error_code` **UNSTABLE**: The [error codes](https://connectrpc.com//docs/protocol/#error-codes) of the Connect request. Error codes are always string values.
                ///
                /// - Stability: development
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
                public var errorCode: SpanAttributeKey<ErrorCodeEnum> {
                    .init(name: OTelAttribute.rpc.connectRpc.errorCode)
                }

                public struct ErrorCodeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                    public let rawValue: String
                    public init(rawValue: String) {
                        self.rawValue = rawValue
                    }
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
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
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                /// `rpc.connect_rpc.request.metadata` **UNSTABLE**: Connect request metadata, `<key>` being the normalized Connect Metadata key (lowercase), the value being the metadata values.
                ///
                /// - Stability: development
                /// - Type: templateStringArray
                ///
                /// Instrumentations SHOULD require an explicit configuration of which metadata values are to be captured.
                /// Including all request metadata values can be a security risk - explicit configuration helps avoid leaking sensitive information.
                ///
                /// For example, a property `my-custom-key` with value `["1.2.3.4", "1.2.3.5"]` SHOULD be recorded as
                /// the `rpc.connect_rpc.request.metadata.my-custom-key` attribute with value `["1.2.3.4", "1.2.3.5"]`
                public var metadata: MetadataAttributes {
                    get {
                        .init(attributes: self.attributes)
                    }
                    set {
                        self.attributes = newValue.attributes
                    }
                }

                public struct MetadataAttributes {
                    public var attributes: Tracing.SpanAttributes

                    public init(attributes: Tracing.SpanAttributes) {
                        self.attributes = attributes
                    }

                    public mutating func set(_ key: String, to value: [String]) {
                        let attributeID = self.attributeID(forKey: key)
                        self.attributes[attributeID] = value
                    }

                    private func attributeID(forKey key: String) -> String {
                        var attributeID = "rpc.connect_rpc.request.metadata."

                        for index in key.indices {
                            let character = key[index]

                            if character == "-" {
                                attributeID.append("_")
                            } else {
                                attributeID.append(character.lowercased())
                            }
                        }

                        return attributeID
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
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                /// `rpc.connect_rpc.response.metadata` **UNSTABLE**: Connect response metadata, `<key>` being the normalized Connect Metadata key (lowercase), the value being the metadata values.
                ///
                /// - Stability: development
                /// - Type: templateStringArray
                ///
                /// Instrumentations SHOULD require an explicit configuration of which metadata values are to be captured.
                /// Including all response metadata values can be a security risk - explicit configuration helps avoid leaking sensitive information.
                ///
                /// For example, a property `my-custom-key` with value `"attribute_value"` SHOULD be recorded as
                /// the `rpc.connect_rpc.response.metadata.my-custom-key` attribute with value `["attribute_value"]`
                public var metadata: MetadataAttributes {
                    get {
                        .init(attributes: self.attributes)
                    }
                    set {
                        self.attributes = newValue.attributes
                    }
                }

                public struct MetadataAttributes {
                    public var attributes: Tracing.SpanAttributes

                    public init(attributes: Tracing.SpanAttributes) {
                        self.attributes = attributes
                    }

                    public mutating func set(_ key: String, to value: [String]) {
                        let attributeID = self.attributeID(forKey: key)
                        self.attributes[attributeID] = value
                    }

                    private func attributeID(forKey key: String) -> String {
                        var attributeID = "rpc.connect_rpc.response.metadata."

                        for index in key.indices {
                            let character = key[index]

                            if character == "-" {
                                attributeID.append("_")
                            } else {
                                attributeID.append(character.lowercased())
                            }
                        }

                        return attributeID
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
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `rpc.grpc.status_code` **UNSTABLE**: The [numeric status code](https://github.com/grpc/grpc/blob/v1.33.2/doc/statuscodes.md) of the gRPC request.
                ///
                /// - Stability: development
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
                public var statusCode: SpanAttributeKey<StatusCodeEnum> {
                    .init(name: OTelAttribute.rpc.grpc.statusCode)
                }

                public struct StatusCodeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                    public let rawValue: String
                    public init(rawValue: String) {
                        self.rawValue = rawValue
                    }
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
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
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                /// `rpc.grpc.request.metadata` **UNSTABLE**: gRPC request metadata, `<key>` being the normalized gRPC Metadata key (lowercase), the value being the metadata values.
                ///
                /// - Stability: development
                /// - Type: templateStringArray
                ///
                /// Instrumentations SHOULD require an explicit configuration of which metadata values are to be captured.
                /// Including all request metadata values can be a security risk - explicit configuration helps avoid leaking sensitive information.
                ///
                /// For example, a property `my-custom-key` with value `["1.2.3.4", "1.2.3.5"]` SHOULD be recorded as
                /// `rpc.grpc.request.metadata.my-custom-key` attribute with value `["1.2.3.4", "1.2.3.5"]`
                public var metadata: MetadataAttributes {
                    get {
                        .init(attributes: self.attributes)
                    }
                    set {
                        self.attributes = newValue.attributes
                    }
                }

                public struct MetadataAttributes {
                    public var attributes: Tracing.SpanAttributes

                    public init(attributes: Tracing.SpanAttributes) {
                        self.attributes = attributes
                    }

                    public mutating func set(_ key: String, to value: [String]) {
                        let attributeID = self.attributeID(forKey: key)
                        self.attributes[attributeID] = value
                    }

                    private func attributeID(forKey key: String) -> String {
                        var attributeID = "rpc.grpc.request.metadata."

                        for index in key.indices {
                            let character = key[index]

                            if character == "-" {
                                attributeID.append("_")
                            } else {
                                attributeID.append(character.lowercased())
                            }
                        }

                        return attributeID
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
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                /// `rpc.grpc.response.metadata` **UNSTABLE**: gRPC response metadata, `<key>` being the normalized gRPC Metadata key (lowercase), the value being the metadata values.
                ///
                /// - Stability: development
                /// - Type: templateStringArray
                ///
                /// Instrumentations SHOULD require an explicit configuration of which metadata values are to be captured.
                /// Including all response metadata values can be a security risk - explicit configuration helps avoid leaking sensitive information.
                ///
                /// For example, a property `my-custom-key` with value `["attribute_value"]` SHOULD be recorded as
                /// the `rpc.grpc.response.metadata.my-custom-key` attribute with value `["attribute_value"]`
                public var metadata: MetadataAttributes {
                    get {
                        .init(attributes: self.attributes)
                    }
                    set {
                        self.attributes = newValue.attributes
                    }
                }

                public struct MetadataAttributes {
                    public var attributes: Tracing.SpanAttributes

                    public init(attributes: Tracing.SpanAttributes) {
                        self.attributes = attributes
                    }

                    public mutating func set(_ key: String, to value: [String]) {
                        let attributeID = self.attributeID(forKey: key)
                        self.attributes[attributeID] = value
                    }

                    private func attributeID(forKey key: String) -> String {
                        var attributeID = "rpc.grpc.response.metadata."

                        for index in key.indices {
                            let character = key[index]

                            if character == "-" {
                                attributeID.append("_")
                            } else {
                                attributeID.append(character.lowercased())
                            }
                        }

                        return attributeID
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
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `rpc.jsonrpc.error_code` **UNSTABLE**: `error.code` property of response if it is an error response.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Examples:
                ///     - `-32700`
                ///     - `100`
                public var errorCode: SpanAttributeKey<Int> { .init(name: OTelAttribute.rpc.jsonrpc.errorCode) }

                /// `rpc.jsonrpc.error_message` **UNSTABLE**: `error.message` property of response if it is an error response.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `Parse error`
                ///     - `User already exists`
                public var errorMessage: SpanAttributeKey<String> {
                    .init(name: OTelAttribute.rpc.jsonrpc.errorMessage)
                }

                /// `rpc.jsonrpc.request_id` **UNSTABLE**: `id` property of request or response. Since protocol allows id to be int, string, `null` or missing (for notifications), value is expected to be cast to string for simplicity. Use empty string in case of `null` value. Omit entirely if this is a notification.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `10`
                ///     - `request-7`
                ///     - ``
                public var requestId: SpanAttributeKey<String> { .init(name: OTelAttribute.rpc.jsonrpc.requestId) }

                /// `rpc.jsonrpc.version` **UNSTABLE**: Protocol version as in `jsonrpc` property of request/response. Since JSON-RPC 1.0 doesn't specify this, the value can be omitted.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `2.0`
                ///     - `1.0`
                public var version: SpanAttributeKey<String> { .init(name: OTelAttribute.rpc.jsonrpc.version) }
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
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `rpc.message.compressed_size` **UNSTABLE**: Compressed size of the message in bytes.
                ///
                /// - Stability: development
                /// - Type: int
                public var compressedSize: SpanAttributeKey<Int> {
                    .init(name: OTelAttribute.rpc.message.compressedSize)
                }

                /// `rpc.message.id` **UNSTABLE**: MUST be calculated as two different counters starting from `1` one for sent messages and one for received message.
                ///
                /// - Stability: development
                /// - Type: int
                ///
                /// This way we guarantee that the values will be consistent between different implementations.
                public var id: SpanAttributeKey<Int> { .init(name: OTelAttribute.rpc.message.id) }

                /// `rpc.message.type` **UNSTABLE**: Whether this is a received or sent message.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `SENT`
                ///     - `RECEIVED`
                public var `type`: SpanAttributeKey<TypeEnum> { .init(name: OTelAttribute.rpc.message.`type`) }

                public struct TypeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                    public let rawValue: String
                    public init(rawValue: String) {
                        self.rawValue = rawValue
                    }
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
                    }
                }

                /// `rpc.message.uncompressed_size` **UNSTABLE**: Uncompressed size of the message in bytes.
                ///
                /// - Stability: development
                /// - Type: int
                public var uncompressedSize: SpanAttributeKey<Int> {
                    .init(name: OTelAttribute.rpc.message.uncompressedSize)
                }
            }
        }
    }
    #endif
}

#endif
