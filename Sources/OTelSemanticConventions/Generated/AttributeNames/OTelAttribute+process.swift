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
    /// `process` namespace
    public enum process {
        /// `process.args_count` **UNSTABLE**: Length of the process.command_args array
        ///
        /// - Stability: development
        /// - Type: int
        /// - Example: `4`
        ///
        /// This field can be useful for querying or performing bucket analysis on how many arguments were provided to start a process. More arguments may be an indication of suspicious activity.
        public static let argsCount = "process.args_count"

        /// `process.command` **UNSTABLE**: The command used to launch the process (i.e. the command name). On Linux based systems, can be set to the zeroth string in `proc/[pid]/cmdline`. On Windows, can be set to the first parameter extracted from `GetCommandLineW`.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `cmd/otelcol`
        public static let command = "process.command"

        /// `process.command_args` **UNSTABLE**: All the command arguments (including the command/executable itself) as received by the process. On Linux-based systems (and some other Unixoid systems supporting procfs), can be set according to the list of null-delimited strings extracted from `proc/[pid]/cmdline`. For libc-based executables, this would be the full argv vector passed to `main`. SHOULD NOT be collected by default unless there is sanitization that excludes sensitive data.
        ///
        /// - Stability: development
        /// - Type: stringArray
        public static let commandArgs = "process.command_args"

        /// `process.command_line` **UNSTABLE**: The full command used to launch the process as a single string representing the full command. On Windows, can be set to the result of `GetCommandLineW`. Do not set this if you have to assemble it just for monitoring; use `process.command_args` instead. SHOULD NOT be collected by default unless there is sanitization that excludes sensitive data.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `C:\cmd\otecol --config="my directory\config.yaml"`
        public static let commandLine = "process.command_line"

        /// `process.context_switch_type` **UNSTABLE**: "Deprecated, use `process.context_switch.type` instead."
        ///
        /// - Stability: development
        /// - Type: enum
        ///     - `voluntary`
        ///     - `involuntary`
        @available(*, deprecated, renamed: "OTelAttribute.process.contextSwitch.type")
        public static let contextSwitchType = "process.context_switch_type"

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
        public static let environmentVariable = "process.environment_variable"

        /// `process.interactive` **UNSTABLE**: Whether the process is connected to an interactive shell.
        ///
        /// - Stability: development
        /// - Type: boolean
        public static let interactive = "process.interactive"

        /// `process.owner` **UNSTABLE**: The username of the user that owns the process.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `root`
        public static let owner = "process.owner"

        /// `process.parent_pid` **UNSTABLE**: Parent Process identifier (PPID).
        ///
        /// - Stability: development
        /// - Type: int
        /// - Example: `111`
        public static let parentPid = "process.parent_pid"

        /// `process.pid` **UNSTABLE**: Process identifier (PID).
        ///
        /// - Stability: development
        /// - Type: int
        /// - Example: `1234`
        public static let pid = "process.pid"

        /// `process.state` **UNSTABLE**: The process state, e.g., [Linux Process State Codes](https://man7.org/linux/man-pages/man1/ps.1.html#PROCESS_STATE_CODES)
        ///
        /// - Stability: development
        /// - Type: enum
        ///     - `running`
        ///     - `sleeping`
        ///     - `stopped`
        ///     - `defunct`
        /// - Example: `running`
        public static let state = "process.state"

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
        public static let title = "process.title"

        /// `process.vpid` **UNSTABLE**: Virtual process identifier.
        ///
        /// - Stability: development
        /// - Type: int
        /// - Example: `12`
        ///
        /// The process ID within a PID namespace. This is not necessarily unique across all processes on the host but it is unique within the process namespace that the process exists within.
        public static let vpid = "process.vpid"

        /// `process.working_directory` **UNSTABLE**: The working directory of the process.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `/root`
        public static let workingDirectory = "process.working_directory"

        /// `process.context_switch` namespace
        public enum contextSwitch {
            /// `process.context_switch.type` **UNSTABLE**: Specifies whether the context switches for this data point were voluntary or involuntary.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `voluntary`
            ///     - `involuntary`
            public static let `type` = "process.context_switch.type"
        }

        /// `process.cpu` namespace
        public enum cpu {
            /// `process.cpu.state` **UNSTABLE**: Deprecated, use `cpu.mode` instead.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `system`
            ///     - `user`
            ///     - `wait`
            @available(*, deprecated, renamed: "OTelAttribute.cpu.mode")
            public static let state = "process.cpu.state"
        }

        /// `process.creation` namespace
        public enum creation {
            /// `process.creation.time` **UNSTABLE**: The date and time the process was created, in ISO 8601 format.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `2023-11-21T09:25:34.853Z`
            public static let time = "process.creation.time"
        }

        /// `process.executable` namespace
        public enum executable {
            /// `process.executable.name` **UNSTABLE**: The name of the process executable. On Linux based systems, this SHOULD be set to the base name of the target of `/proc/[pid]/exe`. On Windows, this SHOULD be set to the base name of `GetProcessImageFileNameW`.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `otelcol`
            public static let name = "process.executable.name"

            /// `process.executable.path` **UNSTABLE**: The full path to the process executable. On Linux based systems, can be set to the target of `proc/[pid]/exe`. On Windows, can be set to the result of `GetProcessImageFileNameW`.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `/usr/bin/cmd/otelcol`
            public static let path = "process.executable.path"

            /// `process.executable.build_id` namespace
            public enum buildId {
                /// `process.executable.build_id.gnu` **UNSTABLE**: The GNU build ID as found in the `.note.gnu.build-id` ELF section (hex string).
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `c89b11207f6479603b0d49bf291c092c2b719293`
                public static let gnu = "process.executable.build_id.gnu"

                /// `process.executable.build_id.go` **UNSTABLE**: The Go build ID as retrieved by `go tool buildid <go executable>`.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `foh3mEXu7BLZjsN9pOwG/kATcXlYVCDEFouRMQed_/WwRFB1hPo9LBkekthSPG/x8hMC8emW2cCjXD0_1aY`
                public static let go = "process.executable.build_id.go"

                /// `process.executable.build_id.htlhash` **UNSTABLE**: Profiling specific build ID for executables. See the OTel specification for Profiles for more information.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `600DCAFE4A110000F2BF38C493F5FB92`
                public static let htlhash = "process.executable.build_id.htlhash"

                /// `process.executable.build_id.profiling` **UNSTABLE**: "Deprecated, use `process.executable.build_id.htlhash` instead."
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `600DCAFE4A110000F2BF38C493F5FB92`
                @available(*, deprecated, renamed: "OTelAttribute.process.executable.buildId.htlhash")
                public static let profiling = "process.executable.build_id.profiling"
            }
        }

        /// `process.exit` namespace
        public enum exit {
            /// `process.exit.code` **UNSTABLE**: The exit code of the process.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `127`
            public static let code = "process.exit.code"

            /// `process.exit.time` **UNSTABLE**: The date and time the process exited, in ISO 8601 format.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `2023-11-21T09:26:12.315Z`
            public static let time = "process.exit.time"
        }

        /// `process.group_leader` namespace
        public enum groupLeader {
            /// `process.group_leader.pid` **UNSTABLE**: The PID of the process's group leader. This is also the process group ID (PGID) of the process.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `23`
            public static let pid = "process.group_leader.pid"
        }

        /// `process.linux` namespace
        public enum linux {
            /// `process.linux.cgroup` **UNSTABLE**: The control group associated with the process.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `1:name=systemd:/user.slice/user-1000.slice/session-3.scope`
            ///     - `0::/user.slice/user-1000.slice/user@1000.service/tmux-spawn-0267755b-4639-4a27-90ed-f19f88e53748.scope`
            ///
            /// Control groups (cgroups) are a kernel feature used to organize and manage process resources. This attribute provides the path(s) to the cgroup(s) associated with the process, which should match the contents of the [/proc/\[PID\]/cgroup](https://man7.org/linux/man-pages/man7/cgroups.7.html) file.
            public static let cgroup = "process.linux.cgroup"
        }

        /// `process.paging` namespace
        public enum paging {
            /// `process.paging.fault_type` **UNSTABLE**: Deprecated, use `system.paging.fault.type` instead.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `major`
            ///     - `minor`
            @available(*, deprecated, renamed: "OTelAttribute.system.paging.fault.type")
            public static let faultType = "process.paging.fault_type"
        }

        /// `process.real_user` namespace
        public enum realUser {
            /// `process.real_user.id` **UNSTABLE**: The real user ID (RUID) of the process.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `1000`
            public static let id = "process.real_user.id"

            /// `process.real_user.name` **UNSTABLE**: The username of the real user of the process.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `operator`
            public static let name = "process.real_user.name"
        }

        /// `process.runtime` namespace
        public enum runtime {
            /// `process.runtime.description` **UNSTABLE**: An additional description about the runtime of the process, for example a specific vendor customization of the runtime environment.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `Eclipse OpenJ9 Eclipse OpenJ9 VM openj9-0.21.0`
            public static let description = "process.runtime.description"

            /// `process.runtime.name` **UNSTABLE**: The name of the runtime of this process.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `OpenJDK Runtime Environment`
            public static let name = "process.runtime.name"

            /// `process.runtime.version` **UNSTABLE**: The version of the runtime of this process, as returned by the runtime without modification.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `14.0.2`
            public static let version = "process.runtime.version"
        }

        /// `process.saved_user` namespace
        public enum savedUser {
            /// `process.saved_user.id` **UNSTABLE**: The saved user ID (SUID) of the process.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `1002`
            public static let id = "process.saved_user.id"

            /// `process.saved_user.name` **UNSTABLE**: The username of the saved user.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `operator`
            public static let name = "process.saved_user.name"
        }

        /// `process.session_leader` namespace
        public enum sessionLeader {
            /// `process.session_leader.pid` **UNSTABLE**: The PID of the process's session leader. This is also the session ID (SID) of the process.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `14`
            public static let pid = "process.session_leader.pid"
        }

        /// `process.user` namespace
        public enum user {
            /// `process.user.id` **UNSTABLE**: The effective user ID (EUID) of the process.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `1001`
            public static let id = "process.user.id"

            /// `process.user.name` **UNSTABLE**: The username of the effective user of the process.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `root`
            public static let name = "process.user.name"
        }
    }
    #endif
}
