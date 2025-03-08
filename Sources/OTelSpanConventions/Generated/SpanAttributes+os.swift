// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
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
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `os.build_id`: Unique identifier for a particular build or compilation of the operating system.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `TQ3C.230805.001.B2`
            ///     - `20E247`
            ///     - `22621`
            public var buildId: Self.Key<String> { .init(name: OTelAttribute.os.buildId) }
    
            /// `os.description`: Human readable (not intended to be parsed) OS version information, like e.g. reported by `ver` or `lsb_release -a` commands. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `Microsoft Windows [Version 10.0.18363.778]`
            ///     - `Ubuntu 18.04.1 LTS`
            public var description: Self.Key<String> { .init(name: OTelAttribute.os.description) }
    
            /// `os.name`: Human readable operating system name.
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `iOS`
            ///     - `Android`
            ///     - `Ubuntu`
            public var name: Self.Key<String> { .init(name: OTelAttribute.os.name) }
    
            /// `os.type`: The operating system type. 
            /// 
            /// - Stability: experimental
            /// 
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
            ///     - `z_os`: IBM z/OS
            public var `type`: Self.Key<TypeEnum> { .init(name: OTelAttribute.os.`type`) }
            
            public struct TypeEnum: SpanAttributeConvertible {
                private let rawValue: String
                /// `windows`: Microsoft Windows
                public static let windows = Self.init(rawValue: "windows")
                /// `linux`: Linux
                public static let linux = Self.init(rawValue: "linux")
                /// `darwin`: Apple Darwin
                public static let darwin = Self.init(rawValue: "darwin")
                /// `freebsd`: FreeBSD
                public static let freebsd = Self.init(rawValue: "freebsd")
                /// `netbsd`: NetBSD
                public static let netbsd = Self.init(rawValue: "netbsd")
                /// `openbsd`: OpenBSD
                public static let openbsd = Self.init(rawValue: "openbsd")
                /// `dragonflybsd`: DragonFly BSD
                public static let dragonflybsd = Self.init(rawValue: "dragonflybsd")
                /// `hpux`: HP-UX (Hewlett Packard Unix)
                public static let hpux = Self.init(rawValue: "hpux")
                /// `aix`: AIX (Advanced Interactive eXecutive)
                public static let aix = Self.init(rawValue: "aix")
                /// `solaris`: SunOS, Oracle Solaris
                public static let solaris = Self.init(rawValue: "solaris")
                /// `z_os`: IBM z/OS
                public static let zOs = Self.init(rawValue: "z_os")
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(self.rawValue)
                }
            }
    
            /// `os.version`: The version string of the operating system as defined in [Version Attributes](/docs/resource/README.md#version-attributes). 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Examples:
            ///     - `14.2.1`
            ///     - `18.04.1`
            public var version: Self.Key<String> { .init(name: OTelAttribute.os.version) }
        }
    
    
    }
}