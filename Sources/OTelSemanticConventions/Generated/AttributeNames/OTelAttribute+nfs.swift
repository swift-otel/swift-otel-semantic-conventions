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
    /// `nfs` namespace
    public enum nfs {
        /// `nfs.operation` namespace
        public enum operation {
            /// `nfs.operation.name` **UNSTABLE**: NFSv4+ operation name.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `OPEN`
            ///     - `READ`
            ///     - `GETATTR`
            public static let name = "nfs.operation.name"
        }

        /// `nfs.server` namespace
        public enum server {
            /// `nfs.server.repcache` namespace
            public enum repcache {
                /// `nfs.server.repcache.status` **UNSTABLE**: Linux: one of "hit" (NFSD_STATS_RC_HITS), "miss" (NFSD_STATS_RC_MISSES), or "nocache" (NFSD_STATS_RC_NOCACHE -- uncacheable)
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `hit`
                public static let status = "nfs.server.repcache.status"
            }
        }
    }
    #endif
}
