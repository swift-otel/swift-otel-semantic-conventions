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
    /// `graphql` namespace
    public var graphql: GraphqlAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct GraphqlAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `graphql.document`: The GraphQL document being executed.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `query findBookById { bookById(id: ?) { name } }`
            ///
            /// The value may be sanitized to exclude sensitive information.
            public var document: SpanAttributeKey<String> { .init(name: OTelAttribute.graphql.document) }
        }

        /// `graphql.operation` namespace
        public var operation: OperationAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct OperationAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `graphql.operation.name`: The name of the operation being executed.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `findBookById`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.graphql.operation.name) }

                /// `graphql.operation.type`: The type of the operation being executed.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `query`: GraphQL query
                ///     - `mutation`: GraphQL mutation
                ///     - `subscription`: GraphQL subscription
                /// - Examples:
                ///     - `query`
                ///     - `mutation`
                ///     - `subscription`
                public var `type`: SpanAttributeKey<TypeEnum> { .init(name: OTelAttribute.graphql.operation.`type`) }

                public struct TypeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                    public let rawValue: String
                    public init(rawValue: String) {
                        self.rawValue = rawValue
                    }
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
                    }
                }
            }
        }
    }
    #endif
}

#endif
