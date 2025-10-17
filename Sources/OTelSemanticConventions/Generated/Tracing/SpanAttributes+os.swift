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
    /// `os` namespace
    public var os: OsAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
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

            /// `os.build_id` **UNSTABLE**: Unique identifier for a particular build or compilation of the operating system.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `TQ3C.230805.001.B2`
            ///     - `20E247`
            ///     - `22621`
            public var buildId: SpanAttributeKey<String> { .init(name: OTelAttribute.os.buildId) }

            /// `os.description` **UNSTABLE**: Human readable (not intended to be parsed) OS version information, like e.g. reported by `ver` or `lsb_release -a` commands.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `Microsoft Windows [Version 10.0.18363.778]`
            ///     - `Ubuntu 18.04.1 LTS`
            public var description: SpanAttributeKey<String> { .init(name: OTelAttribute.os.description) }

            /// `os.name` **UNSTABLE**: Human readable operating system name.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `iOS`
            ///     - `Android`
            ///     - `Ubuntu`
            public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.os.name) }

            /// `os.type` **UNSTABLE**: The operating system type.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `windows`: Microsoft Windows
            ///     - `linux`: Linux
            ///     - `darwin`: Apple Darwin
            ///     - `freebsd`: FreeBSD
            ///     - `netbsd`: NetBSD
            ///     - `openbsd`: OpenBSD
            ///     - `dragonflybsd`: DragonFly BSD
            ///     - `hpux`: HP-UX (Hewlett Packard Unix)
            ///     - `aix`: AIX (Advanced Interactive eXecutive)
            ///     - `solaris`: SunOS, Oracle Solaris
            ///     - `z_os`: Deprecated. Use `zos` instead.
            ///     - `zos`: IBM z/OS
            public var `type`: SpanAttributeKey<TypeEnum> { .init(name: OTelAttribute.os.`type`) }

            public struct TypeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                public let rawValue: String
                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    .string(self.rawValue)
                }
            }

            /// `os.version` **UNSTABLE**: The version string of the operating system as defined in [Version Attributes](/docs/resource/README.md#version-attributes).
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `14.2.1`
            ///     - `18.04.1`
            public var version: SpanAttributeKey<String> { .init(name: OTelAttribute.os.version) }
        }
    }
    #endif
}

#endif
