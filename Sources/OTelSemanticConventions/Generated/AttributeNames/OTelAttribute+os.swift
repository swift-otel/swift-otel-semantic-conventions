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

extension OTelAttribute {
    #if Experimental
    /// `os` namespace
    public enum os {
        /// `os.build_id`: Unique identifier for a particular build or compilation of the operating system.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Examples:
        ///     - `TQ3C.230805.001.B2`
        ///     - `20E247`
        ///     - `22621`
        public static let buildId = "os.build_id"

        /// `os.description`: Human readable (not intended to be parsed) OS version information, like e.g. reported by `ver` or `lsb_release -a` commands.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Examples:
        ///     - `Microsoft Windows [Version 10.0.18363.778]`
        ///     - `Ubuntu 18.04.1 LTS`
        public static let description = "os.description"

        /// `os.name`: Human readable operating system name.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Examples:
        ///     - `iOS`
        ///     - `Android`
        ///     - `Ubuntu`
        public static let name = "os.name"

        /// `os.type`: The operating system type.
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
        public static let `type` = "os.type"

        /// `os.version`: The version string of the operating system as defined in [Version Attributes](/docs/resource/README.md#version-attributes).
        ///
        /// - Stability: development
        /// - Type: string
        /// - Examples:
        ///     - `14.2.1`
        ///     - `18.04.1`
        public static let version = "os.version"
    }
    #endif
}
