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
    /// `user_agent` namespace
    public var userAgent: UserAgentAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct UserAgentAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            #if Experimental
            /// `user_agent.name` **UNSTABLE**: Name of the user-agent extracted from original. Usually refers to the browser's name.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `Safari`
            ///     - `YourApp`
            ///
            /// [Example](https://www.whatsmyua.info) of extracting browser's name from original string. In the case of using a user-agent for non-browser products, such as microservices with multiple names/versions inside the `user_agent.original`, the most significant name SHOULD be selected. In such a scenario it should align with `user_agent.version`
            public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.userAgent.name) }
            #endif

            /// `user_agent.original`: Value of the [HTTP User-Agent](https://www.rfc-editor.org/rfc/rfc9110.html#field.user-agent) header sent by the client.
            ///
            /// - Stability: stable
            /// - Type: string
            /// - Examples:
            ///     - `CERN-LineMode/2.15 libwww/2.17b3`
            ///     - `Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Mobile/15E148 Safari/604.1`
            ///     - `YourApp/1.0.0 grpc-java-okhttp/1.27.2`
            public var original: SpanAttributeKey<String> { .init(name: OTelAttribute.userAgent.original) }

            #if Experimental
            /// `user_agent.version` **UNSTABLE**: Version of the user-agent extracted from original. Usually refers to the browser's version
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `14.1.2`
            ///     - `1.0.0`
            ///
            /// [Example](https://www.whatsmyua.info) of extracting browser's version from original string. In the case of using a user-agent for non-browser products, such as microservices with multiple names/versions inside the `user_agent.original`, the most significant version SHOULD be selected. In such a scenario it should align with `user_agent.name`
            public var version: SpanAttributeKey<String> { .init(name: OTelAttribute.userAgent.version) }
            #endif
        }

        #if Experimental
        /// `user_agent.os` namespace
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

                /// `user_agent.os.name` **UNSTABLE**: Human readable operating system name.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `iOS`
                ///     - `Android`
                ///     - `Ubuntu`
                ///
                /// For mapping user agent strings to OS names, libraries such as [ua-parser](https://github.com/ua-parser) can be utilized.
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.userAgent.os.name) }

                /// `user_agent.os.version` **UNSTABLE**: The version string of the operating system as defined in [Version Attributes](/docs/resource/README.md#version-attributes).
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `14.2.1`
                ///     - `18.04.1`
                ///
                /// For mapping user agent strings to OS versions, libraries such as [ua-parser](https://github.com/ua-parser) can be utilized.
                public var version: SpanAttributeKey<String> { .init(name: OTelAttribute.userAgent.os.version) }
            }
        }
        #endif

        #if Experimental
        /// `user_agent.synthetic` namespace
        public var synthetic: SyntheticAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct SyntheticAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `user_agent.synthetic.type` **UNSTABLE**: Specifies the category of synthetic traffic, such as tests or bots.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `bot`: Bot source.
                ///     - `test`: Synthetic test source.
                ///
                /// This attribute MAY be derived from the contents of the `user_agent.original` attribute. Components that populate the attribute are responsible for determining what they consider to be synthetic bot or test traffic. This attribute can either be set for self-identification purposes, or on telemetry detected to be generated as a result of a synthetic request. This attribute is useful for distinguishing between genuine client traffic and synthetic traffic generated by bots or tests.
                public var `type`: SpanAttributeKey<TypeEnum> { .init(name: OTelAttribute.userAgent.synthetic.`type`) }

                public struct TypeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
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
        #endif
    }
}

#endif
