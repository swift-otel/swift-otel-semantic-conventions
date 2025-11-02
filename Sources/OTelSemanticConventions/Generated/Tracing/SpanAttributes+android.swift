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
    /// `android` namespace
    public var android: AndroidAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct AndroidAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `android.state` **UNSTABLE**: Deprecated. Use `android.app.state` attribute instead.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `created`: Any time before Activity.onResume() or, if the app has no Activity, Context.startService() has been called in the app for the first time.
            ///     - `background`: Any time after Activity.onPause() or, if the app has no Activity, Context.stopService() has been called when the app was in the foreground state.
            ///     - `foreground`: Any time after Activity.onResume() or, if the app has no Activity, Context.startService() has been called when the app was in either the created or background states.
            @available(*, deprecated, renamed: "SpanAttributes.android.app.state")
            public var state: SpanAttributeKey<StateEnum> { .init(name: OTelAttribute.android.state) }

            public struct StateEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                public let rawValue: String
                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    .string(self.rawValue)
                }
            }
        }

        /// `android.app` namespace
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

                /// `android.app.state` **UNSTABLE**: This attribute represents the state of the application.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `created`: Any time before Activity.onResume() or, if the app has no Activity, Context.startService() has been called in the app for the first time.
                ///     - `background`: Any time after Activity.onPause() or, if the app has no Activity, Context.stopService() has been called when the app was in the foreground state.
                ///     - `foreground`: Any time after Activity.onResume() or, if the app has no Activity, Context.startService() has been called when the app was in either the created or background states.
                /// - Example: `created`
                ///
                /// The Android lifecycle states are defined in [Activity lifecycle callbacks](https://developer.android.com/guide/components/activities/activity-lifecycle#lc), and from which the `OS identifiers` are derived.
                public var state: SpanAttributeKey<StateEnum> { .init(name: OTelAttribute.android.app.state) }

                public struct StateEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                    public let rawValue: String
                    public init(rawValue: String) {
                        self.rawValue = rawValue
                    }
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
                    }
                }
            }
        }

        /// `android.os` namespace
        public var os: OsAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct OsAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `android.os.api_level` **UNSTABLE**: Uniquely identifies the framework API revision offered by a version (`os.version`) of the android operating system. More information can be found in the [Android API levels documentation](https://developer.android.com/guide/topics/manifest/uses-sdk-element#ApiLevels).
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `33`
                ///     - `32`
                public var apiLevel: SpanAttributeKey<String> { .init(name: OTelAttribute.android.os.apiLevel) }
            }
        }
    }
    #endif
}

#endif
