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
    /// `telemetry` namespace
    public var telemetry: TelemetryAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct TelemetryAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
        }

        #if Experimental
        /// `telemetry.distro` namespace
        public var distro: DistroAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct DistroAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `telemetry.distro.name` **UNSTABLE**: The name of the auto instrumentation agent or distribution, if used.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `parts-unlimited-java`
                ///
                /// Official auto instrumentation agents and distributions SHOULD set the `telemetry.distro.name` attribute to
                /// a string starting with `opentelemetry-`, e.g. `opentelemetry-java-instrumentation`.
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.telemetry.distro.name) }

                /// `telemetry.distro.version` **UNSTABLE**: The version string of the auto instrumentation agent or distribution, if used.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `1.2.3`
                public var version: SpanAttributeKey<String> { .init(name: OTelAttribute.telemetry.distro.version) }
            }
        }
        #endif

        /// `telemetry.sdk` namespace
        public var sdk: SdkAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct SdkAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `telemetry.sdk.language`: The language of the telemetry SDK.
                ///
                /// - Stability: stable
                /// - Type: enum
                ///     - `cpp`
                ///     - `dotnet`
                ///     - `erlang`
                ///     - `go`
                ///     - `java`
                ///     - `nodejs`
                ///     - `php`
                ///     - `python`
                ///     - `ruby`
                ///     - `rust`
                ///     - `swift`
                ///     - `webjs`
                public var language: SpanAttributeKey<LanguageEnum> {
                    .init(name: OTelAttribute.telemetry.sdk.language)
                }

                public struct LanguageEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                    public let rawValue: String
                    public init(rawValue: String) {
                        self.rawValue = rawValue
                    }
                    /// `cpp`
                    public static let cpp = Self.init(rawValue: "cpp")
                    /// `dotnet`
                    public static let dotnet = Self.init(rawValue: "dotnet")
                    /// `erlang`
                    public static let erlang = Self.init(rawValue: "erlang")
                    /// `go`
                    public static let go = Self.init(rawValue: "go")
                    /// `java`
                    public static let java = Self.init(rawValue: "java")
                    /// `nodejs`
                    public static let nodejs = Self.init(rawValue: "nodejs")
                    /// `php`
                    public static let php = Self.init(rawValue: "php")
                    /// `python`
                    public static let python = Self.init(rawValue: "python")
                    /// `ruby`
                    public static let ruby = Self.init(rawValue: "ruby")
                    /// `rust`
                    public static let rust = Self.init(rawValue: "rust")
                    /// `swift`
                    public static let swift = Self.init(rawValue: "swift")
                    /// `webjs`
                    public static let webjs = Self.init(rawValue: "webjs")
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
                    }
                }

                /// `telemetry.sdk.name`: The name of the telemetry SDK as defined above.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Example: `opentelemetry`
                ///
                /// The OpenTelemetry SDK MUST set the `telemetry.sdk.name` attribute to `opentelemetry`.
                /// If another SDK, like a fork or a vendor-provided implementation, is used, this SDK MUST set the
                /// `telemetry.sdk.name` attribute to the fully-qualified class or module name of this SDK's main entry point
                /// or another suitable identifier depending on the language.
                /// The identifier `opentelemetry` is reserved and MUST NOT be used in this case.
                /// All custom identifiers SHOULD be stable across different versions of an implementation.
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.telemetry.sdk.name) }

                /// `telemetry.sdk.version`: The version string of the telemetry SDK.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Example: `1.2.3`
                public var version: SpanAttributeKey<String> { .init(name: OTelAttribute.telemetry.sdk.version) }
            }
        }
    }
}

#endif
