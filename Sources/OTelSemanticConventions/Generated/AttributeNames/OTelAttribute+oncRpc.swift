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
    /// `onc_rpc` namespace
    public enum oncRpc {
        /// `onc_rpc.version` **UNSTABLE**: ONC/Sun RPC program version.
        ///
        /// - Stability: development
        /// - Type: int
        public static let version = "onc_rpc.version"

        /// `onc_rpc.procedure` namespace
        public enum procedure {
            /// `onc_rpc.procedure.name` **UNSTABLE**: ONC/Sun RPC procedure name.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `OPEN`
            ///     - `READ`
            ///     - `GETATTR`
            public static let name = "onc_rpc.procedure.name"

            /// `onc_rpc.procedure.number` **UNSTABLE**: ONC/Sun RPC procedure number.
            ///
            /// - Stability: development
            /// - Type: int
            public static let number = "onc_rpc.procedure.number"
        }

        /// `onc_rpc.program` namespace
        public enum program {
            /// `onc_rpc.program.name` **UNSTABLE**: ONC/Sun RPC program name.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `portmapper`
            ///     - `nfs`
            public static let name = "onc_rpc.program.name"
        }
    }
    #endif
}
