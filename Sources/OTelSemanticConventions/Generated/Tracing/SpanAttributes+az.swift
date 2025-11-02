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
    /// `az` namespace
    public var az: AzAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct AzAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `az.namespace` **UNSTABLE**: Deprecated, use `azure.resource_provider.namespace` instead.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `Microsoft.Storage`
            ///     - `Microsoft.KeyVault`
            ///     - `Microsoft.ServiceBus`
            @available(*, deprecated, renamed: "SpanAttributes.azure.resourceProvider.namespace")
            public var namespace: SpanAttributeKey<String> { .init(name: OTelAttribute.az.namespace) }

            /// `az.service_request_id` **UNSTABLE**: Deprecated, use `azure.service.request.id` instead.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `00000000-0000-0000-0000-000000000000`
            @available(*, deprecated, renamed: "SpanAttributes.azure.service.request.id")
            public var serviceRequestId: SpanAttributeKey<String> { .init(name: OTelAttribute.az.serviceRequestId) }
        }
    }
    #endif
}

#endif
