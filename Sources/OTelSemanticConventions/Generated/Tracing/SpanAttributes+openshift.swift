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

#if Tracing

import Tracing

extension SpanAttributes {
    #if Experimental
    /// `openshift` namespace
    public var openshift: OpenshiftAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct OpenshiftAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
        }

        /// `openshift.clusterquota` namespace
        public var clusterquota: ClusterquotaAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ClusterquotaAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `openshift.clusterquota.name` **UNSTABLE**: The name of the cluster quota.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `opentelemetry`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.openshift.clusterquota.name) }

                /// `openshift.clusterquota.uid` **UNSTABLE**: The UID of the cluster quota.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
                public var uid: SpanAttributeKey<String> { .init(name: OTelAttribute.openshift.clusterquota.uid) }
            }
        }
    }
    #endif
}

#endif
