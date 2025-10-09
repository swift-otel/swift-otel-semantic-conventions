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
    /// `go` namespace
    public enum go {
        /// `go.memory` namespace
        public enum memory {
            /// `go.memory.type`: The type of memory.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `stack`: Memory allocated from the heap that is reserved for stack space, whether or not it is currently in-use.
            ///     - `other`: Memory used by the Go runtime, excluding other categories of memory usage described in this enumeration.
            /// - Examples:
            ///     - `other`
            ///     - `stack`
            public static let `type` = "go.memory.type"
        }
    }
    #endif
}
