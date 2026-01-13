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
    /// `rpc` namespace
    public enum rpc {
        /// `rpc.method` **UNSTABLE**: The fully-qualified logical name of the method from the RPC interface perspective.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Examples:
        ///     - `com.example.ExampleService/exampleMethod`
        ///     - `EchoService/Echo`
        ///     - `_OTHER`
        ///
        /// The method name MAY have unbounded cardinality in edge or error cases.
        ///
        /// Some RPC frameworks or libraries provide a fixed set of recognized methods
        /// for client stubs and server implementations. Instrumentations for such
        /// frameworks MUST set this attribute to the original method name only
        /// when the method is recognized by the framework or library.
        ///
        /// When the method is not recognized, for example, when the server receives
        /// a request for a method that is not predefined on the server, or when
        /// instrumentation is not able to reliably detect if the method is predefined,
        /// the attribute MUST be set to `_OTHER`. In such cases, tracing
        /// instrumentations MUST also set `rpc.method_original` attribute to
        /// the original method value.
        ///
        /// If the RPC instrumentation could end up converting valid RPC methods to
        /// `_OTHER`, then it SHOULD provide a way to configure the list of recognized
        /// RPC methods.
        ///
        /// The `rpc.method` can be different from the name of any implementing
        /// method/function.
        /// The `code.function.name` attribute may be used to record the fully-qualified
        /// method actually executing the call on the server side, or the
        /// RPC client stub method on the client side.
        public static let method = "rpc.method"

        /// `rpc.method_original` **UNSTABLE**: The original name of the method used by the client.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Examples:
        ///     - `com.myservice.EchoService/catchAll`
        ///     - `com.myservice.EchoService/unknownMethod`
        ///     - `InvalidMethod`
        public static let methodOriginal = "rpc.method_original"

        /// `rpc.service` **UNSTABLE**: Deprecated, use fully-qualified `rpc.method` instead.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `myservice.EchoService`
        @available(
            *,
            deprecated,
            message: "Value should be included in `rpc.method` which is expected to be a fully-qualified name."
        )
        public static let service = "rpc.service"

        /// `rpc.system` **UNSTABLE**: Deprecated, use `rpc.system.name` attribute instead.
        ///
        /// - Stability: development
        /// - Type: enum
        ///     - `grpc`: gRPC
        ///     - `java_rmi`: Java RMI
        ///     - `dotnet_wcf`: .NET WCF
        ///     - `apache_dubbo`: Apache Dubbo
        ///     - `connect_rpc`: Connect RPC
        ///     - `onc_rpc`: [ONC RPC (Sun RPC)](https://datatracker.ietf.org/doc/html/rfc5531)
        ///     - `jsonrpc`: JSON-RPC
        @available(*, deprecated, renamed: "OTelAttribute.rpc.system.name")
        public static let _system = "rpc.system"

        /// `rpc.connect_rpc` namespace
        public enum connectRpc {
            /// `rpc.connect_rpc.error_code` **UNSTABLE**: Deprecated, use `rpc.response.status_code` attribute instead.
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
            @available(*, deprecated, renamed: "OTelAttribute.rpc.response.statusCode")
            public static let errorCode = "rpc.connect_rpc.error_code"

            /// `rpc.connect_rpc.request` namespace
            public enum request {
                /// `rpc.connect_rpc.request.metadata` **UNSTABLE**: Deprecated, use `rpc.request.metadata` instead.
                ///
                /// - Stability: development
                /// - Type: templateStringArray
                @available(*, deprecated, renamed: "OTelAttribute.rpc.request.metadata")
                public static let metadata = "rpc.connect_rpc.request.metadata"
            }

            /// `rpc.connect_rpc.response` namespace
            public enum response {
                /// `rpc.connect_rpc.response.metadata` **UNSTABLE**: Deprecated, use `rpc.response.metadata` instead.
                ///
                /// - Stability: development
                /// - Type: templateStringArray
                @available(*, deprecated, renamed: "OTelAttribute.rpc.response.metadata")
                public static let metadata = "rpc.connect_rpc.response.metadata"
            }
        }

        /// `rpc.grpc` namespace
        public enum grpc {
            /// `rpc.grpc.status_code` **UNSTABLE**: Deprecated, use string representation on the `rpc.response.status_code` attribute instead.
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
            @available(
                *,
                deprecated,
                message:
                    "Use string representation of the gRPC status code on the `rpc.response.status_code` attribute."
            )
            public static let statusCode = "rpc.grpc.status_code"

            /// `rpc.grpc.request` namespace
            public enum request {
                /// `rpc.grpc.request.metadata` **UNSTABLE**: Deprecated, use `rpc.request.metadata` instead.
                ///
                /// - Stability: development
                /// - Type: templateStringArray
                @available(*, deprecated, renamed: "OTelAttribute.rpc.request.metadata")
                public static let metadata = "rpc.grpc.request.metadata"
            }

            /// `rpc.grpc.response` namespace
            public enum response {
                /// `rpc.grpc.response.metadata` **UNSTABLE**: Deprecated, use `rpc.response.metadata` instead.
                ///
                /// - Stability: development
                /// - Type: templateStringArray
                @available(*, deprecated, renamed: "OTelAttribute.rpc.response.metadata")
                public static let metadata = "rpc.grpc.response.metadata"
            }
        }

        /// `rpc.jsonrpc` namespace
        public enum jsonrpc {
            /// `rpc.jsonrpc.error_code` **UNSTABLE**: Deprecated, use string representation on the `rpc.response.status_code` attribute instead.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Examples:
            ///     - `-32700`
            ///     - `100`
            @available(
                *,
                deprecated,
                message: "Use string representation of the error code on the `rpc.response.status_code` attribute."
            )
            public static let errorCode = "rpc.jsonrpc.error_code"

            /// `rpc.jsonrpc.error_message` **UNSTABLE**: Deprecated, use span status description or `error.message` attribute on other signals.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `Parse error`
            ///     - `User already exists`
            @available(
                *,
                deprecated,
                message: "Use the span status description or `error.message` attribute on other signals."
            )
            public static let errorMessage = "rpc.jsonrpc.error_message"

            /// `rpc.jsonrpc.request_id` **UNSTABLE**: Deprecated, use `jsonrpc.request.id` instead.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `10`
            ///     - `request-7`
            ///     - ``
            @available(*, deprecated, renamed: "OTelAttribute.jsonrpc.request.id")
            public static let requestId = "rpc.jsonrpc.request_id"

            /// `rpc.jsonrpc.version` **UNSTABLE**: Deprecated, use `jsonrpc.protocol.version` instead.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `2.0`
            ///     - `1.0`
            @available(*, deprecated, renamed: "OTelAttribute.jsonrpc.protocol.version")
            public static let version = "rpc.jsonrpc.version"
        }

        /// `rpc.message` namespace
        public enum message {
            /// `rpc.message.compressed_size` **UNSTABLE**: Compressed size of the message in bytes.
            ///
            /// - Stability: development
            /// - Type: int
            public static let compressedSize = "rpc.message.compressed_size"

            /// `rpc.message.id` **UNSTABLE**: MUST be calculated as two different counters starting from `1` one for sent messages and one for received message.
            ///
            /// - Stability: development
            /// - Type: int
            ///
            /// This way we guarantee that the values will be consistent between different implementations.
            public static let id = "rpc.message.id"

            /// `rpc.message.type` **UNSTABLE**: Whether this is a received or sent message.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `SENT`
            ///     - `RECEIVED`
            public static let `type` = "rpc.message.type"

            /// `rpc.message.uncompressed_size` **UNSTABLE**: Uncompressed size of the message in bytes.
            ///
            /// - Stability: development
            /// - Type: int
            public static let uncompressedSize = "rpc.message.uncompressed_size"
        }

        /// `rpc.request` namespace
        public enum request {
            /// `rpc.request.metadata` **UNSTABLE**: RPC request metadata, `<key>` being the normalized RPC metadata key (lowercase), the value being the metadata values.
            ///
            /// - Stability: development
            /// - Type: templateStringArray
            ///
            /// Instrumentations SHOULD require an explicit configuration of which metadata values are to be captured.
            /// Including all request metadata values can be a security risk - explicit configuration helps avoid leaking sensitive information.
            ///
            /// For example, a property `my-custom-key` with value `["1.2.3.4", "1.2.3.5"]` SHOULD be recorded as
            /// `rpc.request.metadata.my-custom-key` attribute with value `["1.2.3.4", "1.2.3.5"]`
            public static let metadata = "rpc.request.metadata"
        }

        /// `rpc.response` namespace
        public enum response {
            /// `rpc.response.metadata` **UNSTABLE**: RPC response metadata, `<key>` being the normalized RPC metadata key (lowercase), the value being the metadata values.
            ///
            /// - Stability: development
            /// - Type: templateStringArray
            ///
            /// Instrumentations SHOULD require an explicit configuration of which metadata values are to be captured.
            /// Including all response metadata values can be a security risk - explicit configuration helps avoid leaking sensitive information.
            ///
            /// For example, a property `my-custom-key` with value `["attribute_value"]` SHOULD be recorded as
            /// the `rpc.response.metadata.my-custom-key` attribute with value `["attribute_value"]`
            public static let metadata = "rpc.response.metadata"

            /// `rpc.response.status_code` **UNSTABLE**: Status code of the RPC returned by the RPC server or generated by the client
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `OK`
            ///     - `DEADLINE_EXCEEDED`
            ///     - `-32602`
            ///
            /// Usually it represents an error code, but may also represent partial success, warning, or differentiate between various types of successful outcomes.
            /// Semantic conventions for individual RPC frameworks SHOULD document what `rpc.response.status_code` means in the context of that system and which values are considered to represent errors.
            public static let statusCode = "rpc.response.status_code"
        }

        /// `rpc.system` namespace
        public enum system {
            /// `rpc.system.name` **UNSTABLE**: The Remote Procedure Call (RPC) system.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `grpc`: [gRPC](https://grpc.io/)
            ///     - `dubbo`: [Apache Dubbo](https://dubbo.apache.org/)
            ///     - `connectrpc`: [Connect RPC](https://connectrpc.com/)
            ///     - `jsonrpc`: [JSON-RPC](https://www.jsonrpc.org/)
            ///
            /// The client and server RPC systems may differ for the same RPC interaction. For example, a client may use Apache Dubbo or Connect RPC to communicate with a server that uses gRPC since both protocols provide compatibility with gRPC.
            public static let name = "rpc.system.name"
        }
    }
    #endif
}
