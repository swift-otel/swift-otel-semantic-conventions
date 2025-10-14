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
    /// `thread` namespace
    public enum thread {
        /// `thread.id` **UNSTABLE**: Current "managed" thread ID (as opposed to OS thread ID).
        ///
        /// - Stability: development
        /// - Type: int
        /// - Example: `42`
        public static let id = "thread.id"

        /// `thread.name` **UNSTABLE**: Current thread name.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `main`
        public static let name = "thread.name"
    }
    #endif
}
