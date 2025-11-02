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
    /// `process` namespace
    public var process: ProcessAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct ProcessAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        /// `process.environment_variable` **UNSTABLE**: Process environment variables, `<key>` being the environment variable name, the value being the environment variable value.
        ///
        /// - Stability: development
        /// - Type: templateString
        /// - Examples:
        ///     - `ubuntu`
        ///     - `/usr/local/bin:/usr/bin`
        ///
        /// Examples:
        ///
        /// - an environment variable `USER` with value `"ubuntu"` SHOULD be recorded
        /// as the `process.environment_variable.USER` attribute with value `"ubuntu"`.
        ///
        /// - an environment variable `PATH` with value `"/usr/local/bin:/usr/bin"`
        /// SHOULD be recorded as the `process.environment_variable.PATH` attribute
        /// with value `"/usr/local/bin:/usr/bin"`.
        public var environmentVariable: EnvironmentVariableAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        public struct EnvironmentVariableAttributes {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public mutating func set(_ key: String, to value: String) {
                let attributeID = self.attributeID(forKey: key)
                self.attributes[attributeID] = value
            }

            private func attributeID(forKey key: String) -> String {
                var attributeID = "process.environment_variable."

                for index in key.indices {
                    let character = key[index]

                    if character == "-" {
                        attributeID.append("_")
                    } else {
                        attributeID.append(character.lowercased())
                    }
                }

                return attributeID
            }
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `process.args_count` **UNSTABLE**: Length of the process.command_args array
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `4`
            ///
            /// This field can be useful for querying or performing bucket analysis on how many arguments were provided to start a process. More arguments may be an indication of suspicious activity.
            public var argsCount: SpanAttributeKey<Int> { .init(name: OTelAttribute.process.argsCount) }

            /// `process.command` **UNSTABLE**: The command used to launch the process (i.e. the command name). On Linux based systems, can be set to the zeroth string in `proc/[pid]/cmdline`. On Windows, can be set to the first parameter extracted from `GetCommandLineW`.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `cmd/otelcol`
            public var command: SpanAttributeKey<String> { .init(name: OTelAttribute.process.command) }

            /// `process.command_args` **UNSTABLE**: All the command arguments (including the command/executable itself) as received by the process. On Linux-based systems (and some other Unixoid systems supporting procfs), can be set according to the list of null-delimited strings extracted from `proc/[pid]/cmdline`. For libc-based executables, this would be the full argv vector passed to `main`. SHOULD NOT be collected by default unless there is sanitization that excludes sensitive data.
            ///
            /// - Stability: development
            /// - Type: stringArray
            public var commandArgs: SpanAttributeKey<[String]> { .init(name: OTelAttribute.process.commandArgs) }

            /// `process.command_line` **UNSTABLE**: The full command used to launch the process as a single string representing the full command. On Windows, can be set to the result of `GetCommandLineW`. Do not set this if you have to assemble it just for monitoring; use `process.command_args` instead. SHOULD NOT be collected by default unless there is sanitization that excludes sensitive data.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `C:\cmd\otecol --config="my directory\config.yaml"`
            public var commandLine: SpanAttributeKey<String> { .init(name: OTelAttribute.process.commandLine) }

            /// `process.context_switch_type` **UNSTABLE**: Specifies whether the context switches for this data point were voluntary or involuntary.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `voluntary`
            ///     - `involuntary`
            public var contextSwitchType: SpanAttributeKey<ContextSwitchTypeEnum> {
                .init(name: OTelAttribute.process.contextSwitchType)
            }

            public struct ContextSwitchTypeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                public let rawValue: String
                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    .string(self.rawValue)
                }
            }

            /// `process.interactive` **UNSTABLE**: Whether the process is connected to an interactive shell.
            ///
            /// - Stability: development
            /// - Type: boolean
            public var interactive: SpanAttributeKey<Bool> { .init(name: OTelAttribute.process.interactive) }

            /// `process.owner` **UNSTABLE**: The username of the user that owns the process.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `root`
            public var owner: SpanAttributeKey<String> { .init(name: OTelAttribute.process.owner) }

            /// `process.parent_pid` **UNSTABLE**: Parent Process identifier (PPID).
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `111`
            public var parentPid: SpanAttributeKey<Int> { .init(name: OTelAttribute.process.parentPid) }

            /// `process.pid` **UNSTABLE**: Process identifier (PID).
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `1234`
            public var pid: SpanAttributeKey<Int> { .init(name: OTelAttribute.process.pid) }

            /// `process.title` **UNSTABLE**: Process title (proctitle)
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `cat /etc/hostname`
            ///     - `xfce4-session`
            ///     - `bash`
            ///
            /// In many Unix-like systems, process title (proctitle), is the string that represents the name or command line of a running process, displayed by system monitoring tools like ps, top, and htop.
            public var title: SpanAttributeKey<String> { .init(name: OTelAttribute.process.title) }

            /// `process.vpid` **UNSTABLE**: Virtual process identifier.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `12`
            ///
            /// The process ID within a PID namespace. This is not necessarily unique across all processes on the host but it is unique within the process namespace that the process exists within.
            public var vpid: SpanAttributeKey<Int> { .init(name: OTelAttribute.process.vpid) }

            /// `process.working_directory` **UNSTABLE**: The working directory of the process.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `/root`
            public var workingDirectory: SpanAttributeKey<String> {
                .init(name: OTelAttribute.process.workingDirectory)
            }
        }

        /// `process.cpu` namespace
        public var cpu: CpuAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct CpuAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `process.cpu.state` **UNSTABLE**: Deprecated, use `cpu.mode` instead.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `system`
                ///     - `user`
                ///     - `wait`
                @available(*, deprecated, renamed: "SpanAttributes.cpu.mode")
                public var state: SpanAttributeKey<StateEnum> { .init(name: OTelAttribute.process.cpu.state) }

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

        /// `process.creation` namespace
        public var creation: CreationAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct CreationAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `process.creation.time` **UNSTABLE**: The date and time the process was created, in ISO 8601 format.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `2023-11-21T09:25:34.853Z`
                public var time: SpanAttributeKey<String> { .init(name: OTelAttribute.process.creation.time) }
            }
        }

        /// `process.executable` namespace
        public var executable: ExecutableAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ExecutableAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `process.executable.name` **UNSTABLE**: The name of the process executable. On Linux based systems, this SHOULD be set to the base name of the target of `/proc/[pid]/exe`. On Windows, this SHOULD be set to the base name of `GetProcessImageFileNameW`.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `otelcol`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.process.executable.name) }

                /// `process.executable.path` **UNSTABLE**: The full path to the process executable. On Linux based systems, can be set to the target of `proc/[pid]/exe`. On Windows, can be set to the result of `GetProcessImageFileNameW`.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `/usr/bin/cmd/otelcol`
                public var path: SpanAttributeKey<String> { .init(name: OTelAttribute.process.executable.path) }
            }

            /// `process.executable.build_id` namespace
            public var buildId: BuildIdAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct BuildIdAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `process.executable.build_id.gnu` **UNSTABLE**: The GNU build ID as found in the `.note.gnu.build-id` ELF section (hex string).
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `c89b11207f6479603b0d49bf291c092c2b719293`
                    public var gnu: SpanAttributeKey<String> {
                        .init(name: OTelAttribute.process.executable.buildId.gnu)
                    }

                    /// `process.executable.build_id.go` **UNSTABLE**: The Go build ID as retrieved by `go tool buildid <go executable>`.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `foh3mEXu7BLZjsN9pOwG/kATcXlYVCDEFouRMQed_/WwRFB1hPo9LBkekthSPG/x8hMC8emW2cCjXD0_1aY`
                    public var go: SpanAttributeKey<String> { .init(name: OTelAttribute.process.executable.buildId.go) }

                    /// `process.executable.build_id.htlhash` **UNSTABLE**: Profiling specific build ID for executables. See the OTel specification for Profiles for more information.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `600DCAFE4A110000F2BF38C493F5FB92`
                    public var htlhash: SpanAttributeKey<String> {
                        .init(name: OTelAttribute.process.executable.buildId.htlhash)
                    }

                    /// `process.executable.build_id.profiling` **UNSTABLE**: "Deprecated, use `process.executable.build_id.htlhash` instead."
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `600DCAFE4A110000F2BF38C493F5FB92`
                    @available(*, deprecated, renamed: "SpanAttributes.process.executable.buildId.htlhash")
                    public var profiling: SpanAttributeKey<String> {
                        .init(name: OTelAttribute.process.executable.buildId.profiling)
                    }
                }
            }
        }

        /// `process.exit` namespace
        public var exit: ExitAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ExitAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `process.exit.code` **UNSTABLE**: The exit code of the process.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `127`
                public var code: SpanAttributeKey<Int> { .init(name: OTelAttribute.process.exit.code) }

                /// `process.exit.time` **UNSTABLE**: The date and time the process exited, in ISO 8601 format.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `2023-11-21T09:26:12.315Z`
                public var time: SpanAttributeKey<String> { .init(name: OTelAttribute.process.exit.time) }
            }
        }

        /// `process.group_leader` namespace
        public var groupLeader: GroupLeaderAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct GroupLeaderAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `process.group_leader.pid` **UNSTABLE**: The PID of the process's group leader. This is also the process group ID (PGID) of the process.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `23`
                public var pid: SpanAttributeKey<Int> { .init(name: OTelAttribute.process.groupLeader.pid) }
            }
        }

        /// `process.linux` namespace
        public var linux: LinuxAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct LinuxAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `process.linux.cgroup` **UNSTABLE**: The control group associated with the process.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `1:name=systemd:/user.slice/user-1000.slice/session-3.scope`
                ///     - `0::/user.slice/user-1000.slice/user@1000.service/tmux-spawn-0267755b-4639-4a27-90ed-f19f88e53748.scope`
                ///
                /// Control groups (cgroups) are a kernel feature used to organize and manage process resources. This attribute provides the path(s) to the cgroup(s) associated with the process, which should match the contents of the [/proc/\[PID\]/cgroup](https://man7.org/linux/man-pages/man7/cgroups.7.html) file.
                public var cgroup: SpanAttributeKey<String> { .init(name: OTelAttribute.process.linux.cgroup) }
            }
        }

        /// `process.paging` namespace
        public var paging: PagingAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct PagingAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `process.paging.fault_type` **UNSTABLE**: The type of page fault for this data point. Type `major` is for major/hard page faults, and `minor` is for minor/soft page faults.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `major`
                ///     - `minor`
                public var faultType: SpanAttributeKey<FaultTypeEnum> {
                    .init(name: OTelAttribute.process.paging.faultType)
                }

                public struct FaultTypeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
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

        /// `process.real_user` namespace
        public var realUser: RealUserAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct RealUserAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `process.real_user.id` **UNSTABLE**: The real user ID (RUID) of the process.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `1000`
                public var id: SpanAttributeKey<Int> { .init(name: OTelAttribute.process.realUser.id) }

                /// `process.real_user.name` **UNSTABLE**: The username of the real user of the process.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `operator`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.process.realUser.name) }
            }
        }

        /// `process.runtime` namespace
        public var runtime: RuntimeAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct RuntimeAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `process.runtime.description` **UNSTABLE**: An additional description about the runtime of the process, for example a specific vendor customization of the runtime environment.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `Eclipse OpenJ9 Eclipse OpenJ9 VM openj9-0.21.0`
                public var description: SpanAttributeKey<String> {
                    .init(name: OTelAttribute.process.runtime.description)
                }

                /// `process.runtime.name` **UNSTABLE**: The name of the runtime of this process.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `OpenJDK Runtime Environment`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.process.runtime.name) }

                /// `process.runtime.version` **UNSTABLE**: The version of the runtime of this process, as returned by the runtime without modification.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `14.0.2`
                public var version: SpanAttributeKey<String> { .init(name: OTelAttribute.process.runtime.version) }
            }
        }

        /// `process.saved_user` namespace
        public var savedUser: SavedUserAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct SavedUserAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `process.saved_user.id` **UNSTABLE**: The saved user ID (SUID) of the process.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `1002`
                public var id: SpanAttributeKey<Int> { .init(name: OTelAttribute.process.savedUser.id) }

                /// `process.saved_user.name` **UNSTABLE**: The username of the saved user.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `operator`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.process.savedUser.name) }
            }
        }

        /// `process.session_leader` namespace
        public var sessionLeader: SessionLeaderAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct SessionLeaderAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `process.session_leader.pid` **UNSTABLE**: The PID of the process's session leader. This is also the session ID (SID) of the process.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `14`
                public var pid: SpanAttributeKey<Int> { .init(name: OTelAttribute.process.sessionLeader.pid) }
            }
        }

        /// `process.user` namespace
        public var user: UserAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct UserAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `process.user.id` **UNSTABLE**: The effective user ID (EUID) of the process.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `1001`
                public var id: SpanAttributeKey<Int> { .init(name: OTelAttribute.process.user.id) }

                /// `process.user.name` **UNSTABLE**: The username of the effective user of the process.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `root`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.process.user.name) }
            }
        }
    }
    #endif
}

#endif
