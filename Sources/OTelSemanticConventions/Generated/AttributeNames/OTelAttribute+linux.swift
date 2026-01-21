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
    /// `linux` namespace
    public enum linux {
        /// `linux.memory` namespace
        public enum memory {
            /// `linux.memory.slab` namespace
            public enum slab {
                /// `linux.memory.slab.state` **UNSTABLE**: The Linux Slab memory state
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `reclaimable`
                ///     - `unreclaimable`
                /// - Examples:
                ///     - `reclaimable`
                ///     - `unreclaimable`
                @available(*, deprecated, renamed: "OTelAttribute.system.memory.linux.slab.state")
                public static let state = "linux.memory.slab.state"
            }
        }
    }
    #endif
}
