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
    /// `error` namespace
    public var error: ErrorAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct ErrorAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes

        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `error.type`: Describes a class of error the operation ended with.
            ///
            /// - Stability: stable
            /// - Type: enum
            ///     - `_OTHER`: A fallback error value to be used when the instrumentation doesn't define a custom value.
            /// - Examples:
            ///     - `timeout`
            ///     - `java.net.UnknownHostException`
            ///     - `server_certificate_invalid`
            ///     - `500`
            ///
            /// The `error.type` SHOULD be predictable, and SHOULD have low cardinality.
            ///
            /// When `error.type` is set to a type (e.g., an exception type), its
            /// canonical class name identifying the type within the artifact SHOULD be used.
            ///
            /// Instrumentations SHOULD document the list of errors they report.
            ///
            /// The cardinality of `error.type` within one instrumentation library SHOULD be low.
            /// Telemetry consumers that aggregate data from multiple instrumentation libraries and applications
            /// should be prepared for `error.type` to have high cardinality at query time when no
            /// additional filters are applied.
            ///
            /// If the operation has completed successfully, instrumentations SHOULD NOT set `error.type`.
            ///
            /// If a specific domain defines its own set of error identifiers (such as HTTP or gRPC status codes),
            /// it's RECOMMENDED to:
            ///
            /// - Use a domain-specific attribute
            /// - Set `error.type` to capture all errors, regardless of whether they are defined within the domain-specific set or not.
            public var `type`: SpanAttributeKey<TypeEnum> { .init(name: OTelAttribute.error.`type`) }

            public struct TypeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                public let rawValue: String
                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
                /// `_OTHER`: A fallback error value to be used when the instrumentation doesn't define a custom value.
                public static let other = Self.init(rawValue: "_OTHER")
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    .string(self.rawValue)
                }
            }
        }
    }
}

#endif
