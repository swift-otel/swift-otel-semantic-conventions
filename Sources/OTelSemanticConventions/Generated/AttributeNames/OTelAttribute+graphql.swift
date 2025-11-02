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
    /// `graphql` namespace
    public enum graphql {
        /// `graphql.document` **UNSTABLE**: The GraphQL document being executed.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `query findBookById { bookById(id: ?) { name } }`
        ///
        /// The value may be sanitized to exclude sensitive information.
        public static let document = "graphql.document"

        /// `graphql.operation` namespace
        public enum operation {
            /// `graphql.operation.name` **UNSTABLE**: The name of the operation being executed.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `findBookById`
            public static let name = "graphql.operation.name"

            /// `graphql.operation.type` **UNSTABLE**: The type of the operation being executed.
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
            public static let `type` = "graphql.operation.type"
        }
    }
    #endif
}
