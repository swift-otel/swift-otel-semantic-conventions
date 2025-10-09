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
    /// `message` namespace
    public enum message {
        /// `message.compressed_size`: Deprecated, use `rpc.message.compressed_size` instead.
        ///
        /// - Stability: development
        /// - Type: int
        @available(*, deprecated, renamed: "OTelAttribute.rpc.message.compressedSize")
        public static let compressedSize = "message.compressed_size"

        /// `message.id`: Deprecated, use `rpc.message.id` instead.
        ///
        /// - Stability: development
        /// - Type: int
        @available(*, deprecated, renamed: "OTelAttribute.rpc.message.id")
        public static let id = "message.id"

        /// `message.type`: Deprecated, use `rpc.message.type` instead.
        ///
        /// - Stability: development
        /// - Type: enum
        ///     - `SENT`
        ///     - `RECEIVED`
        @available(*, deprecated, renamed: "OTelAttribute.rpc.message.type")
        public static let `type` = "message.type"

        /// `message.uncompressed_size`: Deprecated, use `rpc.message.uncompressed_size` instead.
        ///
        /// - Stability: development
        /// - Type: int
        @available(*, deprecated, renamed: "OTelAttribute.rpc.message.uncompressedSize")
        public static let uncompressedSize = "message.uncompressed_size"
    }
    #endif
}
