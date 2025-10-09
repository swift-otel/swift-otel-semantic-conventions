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
    /// `cpu` namespace
    public enum cpu {
        /// `cpu.logical_number`: The logical CPU number [0..n-1]
        ///
        /// - Stability: development
        /// - Type: int
        /// - Example: `1`
        public static let logicalNumber = "cpu.logical_number"

        /// `cpu.mode`: The mode of the CPU
        ///
        /// - Stability: development
        /// - Type: enum
        ///     - `user`: User
        ///     - `system`: System
        ///     - `nice`: Nice
        ///     - `idle`: Idle
        ///     - `iowait`: IO Wait
        ///     - `interrupt`: Interrupt
        ///     - `steal`: Steal
        ///     - `kernel`: Kernel
        /// - Examples:
        ///     - `user`
        ///     - `system`
        public static let mode = "cpu.mode"
    }
    #endif
}
