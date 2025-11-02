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
    /// `openshift` namespace
    public enum openshift {
        /// `openshift.clusterquota` namespace
        public enum clusterquota {
            /// `openshift.clusterquota.name` **UNSTABLE**: The name of the cluster quota.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `opentelemetry`
            public static let name = "openshift.clusterquota.name"

            /// `openshift.clusterquota.uid` **UNSTABLE**: The UID of the cluster quota.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
            public static let uid = "openshift.clusterquota.uid"
        }
    }
    #endif
}
