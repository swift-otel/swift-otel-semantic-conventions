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
    /// `ios` namespace
    public var ios: IosAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct IosAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `ios.state` **UNSTABLE**: Deprecated. Use the `ios.app.state` attribute.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `active`: The app has become `active`. Associated with UIKit notification `applicationDidBecomeActive`.
            ///     - `inactive`: The app is now `inactive`. Associated with UIKit notification `applicationWillResignActive`.
            ///     - `background`: The app is now in the background. This value is associated with UIKit notification `applicationDidEnterBackground`.
            ///     - `foreground`: The app is now in the foreground. This value is associated with UIKit notification `applicationWillEnterForeground`.
            ///     - `terminate`: The app is about to terminate. Associated with UIKit notification `applicationWillTerminate`.
            ///
            /// The iOS lifecycle states are defined in the [UIApplicationDelegate documentation](https://developer.apple.com/documentation/uikit/uiapplicationdelegate), and from which the `OS terminology` column values are derived.
            @available(*, deprecated, renamed: "SpanAttributes.ios.app.state")
            public var state: SpanAttributeKey<StateEnum> { .init(name: OTelAttribute.ios.state) }

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

        /// `ios.app` namespace
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

                /// `ios.app.state` **UNSTABLE**: This attribute represents the state of the application.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `active`: The app has become `active`. Associated with UIKit notification `applicationDidBecomeActive`.
                ///     - `inactive`: The app is now `inactive`. Associated with UIKit notification `applicationWillResignActive`.
                ///     - `background`: The app is now in the background. This value is associated with UIKit notification `applicationDidEnterBackground`.
                ///     - `foreground`: The app is now in the foreground. This value is associated with UIKit notification `applicationWillEnterForeground`.
                ///     - `terminate`: The app is about to terminate. Associated with UIKit notification `applicationWillTerminate`.
                ///
                /// The iOS lifecycle states are defined in the [UIApplicationDelegate documentation](https://developer.apple.com/documentation/uikit/uiapplicationdelegate), and from which the `OS terminology` column values are derived.
                public var state: SpanAttributeKey<StateEnum> { .init(name: OTelAttribute.ios.app.state) }

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
    }
    #endif
}

#endif
