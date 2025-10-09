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
    /// `pool` namespace
    public enum pool {
        /// `pool.name`: Deprecated, use `db.client.connection.pool.name` instead.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `myDataSource`
        @available(*, deprecated, renamed: "OTelAttribute.db.client.connection.pool.name")
        public static let name = "pool.name"
    }
    #endif
}
