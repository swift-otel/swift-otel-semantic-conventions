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
    /// `zos` namespace
    public enum zos {
        /// `zos.smf` namespace
        public enum smf {
            /// `zos.smf.id` **UNSTABLE**: The System Management Facility (SMF) identifier that uniquely identifies a z/OS system within a sysplex or mainframe environment and is used for system and performance analysis.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `SYS1`
            @available(
                *,
                deprecated,
                message:
                    "Moved to the [OpenTelemetry Mainframe semantic conventions repository](https://github.com/open-telemetry/semantic-conventions-mainframe)."
            )
            public static let id = "zos.smf.id"
        }

        /// `zos.sysplex` namespace
        public enum sysplex {
            /// `zos.sysplex.name` **UNSTABLE**: The name of the sysplex to which the z/OS system belongs.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `SYSPLEX1`
            @available(
                *,
                deprecated,
                message:
                    "Moved to the [OpenTelemetry Mainframe semantic conventions repository](https://github.com/open-telemetry/semantic-conventions-mainframe)."
            )
            public static let name = "zos.sysplex.name"
        }
    }
    #endif
}
