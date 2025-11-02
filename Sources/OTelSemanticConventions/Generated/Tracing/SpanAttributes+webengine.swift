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
    /// `webengine` namespace
    public var webengine: WebengineAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct WebengineAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `webengine.description` **UNSTABLE**: Additional description of the web engine (e.g. detailed version and edition information).
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `WildFly Full 21.0.0.Final (WildFly Core 13.0.1.Final) - 2.2.2.Final`
            public var description: SpanAttributeKey<String> { .init(name: OTelAttribute.webengine.description) }

            /// `webengine.name` **UNSTABLE**: The name of the web engine.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `WildFly`
            public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.webengine.name) }

            /// `webengine.version` **UNSTABLE**: The version of the web engine.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `21.0.0`
            public var version: SpanAttributeKey<String> { .init(name: OTelAttribute.webengine.version) }
        }
    }
    #endif
}

#endif
