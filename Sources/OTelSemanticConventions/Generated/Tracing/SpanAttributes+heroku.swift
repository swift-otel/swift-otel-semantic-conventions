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
    /// `heroku` namespace
    public var heroku: HerokuAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct HerokuAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
        }

        /// `heroku.app` namespace
        public var app: AppAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct AppAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `heroku.app.id` **UNSTABLE**: Unique identifier for the application
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `2daa2797-e42b-4624-9322-ec3f968df4da`
                public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.heroku.app.id) }
            }
        }

        /// `heroku.release` namespace
        public var release: ReleaseAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ReleaseAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `heroku.release.commit` **UNSTABLE**: Commit hash for the current release
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `e6134959463efd8966b20e75b913cafe3f5ec`
                public var commit: SpanAttributeKey<String> { .init(name: OTelAttribute.heroku.release.commit) }

                /// `heroku.release.creation_timestamp` **UNSTABLE**: Time and date the release was created
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `2022-10-23T18:00:42Z`
                public var creationTimestamp: SpanAttributeKey<String> {
                    .init(name: OTelAttribute.heroku.release.creationTimestamp)
                }
            }
        }
    }
    #endif
}

#endif
