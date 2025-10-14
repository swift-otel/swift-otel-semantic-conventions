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
    /// `code` namespace
    public enum code {
        #if Experimental
        /// `code.column` **UNSTABLE**: Deprecated, use `code.column.number`
        ///
        /// - Stability: development
        /// - Type: int
        /// - Example: `16`
        @available(*, deprecated, renamed: "OTelAttribute.code.column.number")
        public static let _column = "code.column"
        #endif

        #if Experimental
        /// `code.filepath` **UNSTABLE**: Deprecated, use `code.file.path` instead
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `/usr/local/MyApplication/content_root/app/index.php`
        @available(*, deprecated, renamed: "OTelAttribute.code.file.path")
        public static let filepath = "code.filepath"
        #endif

        #if Experimental
        /// `code.function` **UNSTABLE**: Deprecated, use `code.function.name` instead
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `serveRequest`
        @available(
            *,
            deprecated,
            message: "Value should be included in `code.function.name` which is expected to be a fully-qualified name."
        )
        public static let _function = "code.function"
        #endif

        #if Experimental
        /// `code.lineno` **UNSTABLE**: Deprecated, use `code.line.number` instead
        ///
        /// - Stability: development
        /// - Type: int
        /// - Example: `42`
        @available(*, deprecated, renamed: "OTelAttribute.code.line.number")
        public static let lineno = "code.lineno"
        #endif

        #if Experimental
        /// `code.namespace` **UNSTABLE**: Deprecated, namespace is now included into `code.function.name`
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `com.example.MyHttpService`
        @available(
            *,
            deprecated,
            message: "Value should be included in `code.function.name` which is expected to be a fully-qualified name."
        )
        public static let namespace = "code.namespace"
        #endif

        /// `code.stacktrace`: A stacktrace as a string in the natural representation for the language runtime. The representation is identical to [`exception.stacktrace`](/docs/exceptions/exceptions-spans.md#stacktrace-representation). This attribute MUST NOT be used on the Profile signal since the data is already captured in 'message Location'. This constraint is imposed to prevent redundancy and maintain data integrity.
        ///
        /// - Stability: stable
        /// - Type: string
        /// - Example: `at com.example.GenerateTrace.methodB(GenerateTrace.java:13)\n at com.example.GenerateTrace.methodA(GenerateTrace.java:9)\n at com.example.GenerateTrace.main(GenerateTrace.java:5)
        /// `
        public static let stacktrace = "code.stacktrace"

        /// `code.column` namespace
        public enum column {
            /// `code.column.number`: The column number in `code.file.path` best representing the operation. It SHOULD point within the code unit named in `code.function.name`. This attribute MUST NOT be used on the Profile signal since the data is already captured in 'message Line'. This constraint is imposed to prevent redundancy and maintain data integrity.
            ///
            /// - Stability: stable
            /// - Type: int
            /// - Example: `16`
            public static let number = "code.column.number"
        }

        /// `code.file` namespace
        public enum file {
            /// `code.file.path`: The source code file name that identifies the code unit as uniquely as possible (preferably an absolute file path). This attribute MUST NOT be used on the Profile signal since the data is already captured in 'message Function'. This constraint is imposed to prevent redundancy and maintain data integrity.
            ///
            /// - Stability: stable
            /// - Type: string
            /// - Example: `/usr/local/MyApplication/content_root/app/index.php`
            public static let path = "code.file.path"
        }

        /// `code.function` namespace
        public enum function {
            /// `code.function.name`: The method or function fully-qualified name without arguments. The value should fit the natural representation of the language runtime, which is also likely the same used within `code.stacktrace` attribute value. This attribute MUST NOT be used on the Profile signal since the data is already captured in 'message Function'. This constraint is imposed to prevent redundancy and maintain data integrity.
            ///
            /// - Stability: stable
            /// - Type: string
            /// - Examples:
            ///     - `com.example.MyHttpService.serveRequest`
            ///     - `GuzzleHttp\Client::transfer`
            ///     - `fopen`
            ///
            /// Values and format depends on each language runtime, thus it is impossible to provide an exhaustive list of examples.
            /// The values are usually the same (or prefixes of) the ones found in native stack trace representation stored in
            /// `code.stacktrace` without information on arguments.
            ///
            /// Examples:
            ///
            /// * Java method: `com.example.MyHttpService.serveRequest`
            /// * Java anonymous class method: `com.mycompany.Main$1.myMethod`
            /// * Java lambda method: `com.mycompany.Main$$Lambda/0x0000748ae4149c00.myMethod`
            /// * PHP function: `GuzzleHttp\Client::transfer`
            /// * Go function: `github.com/my/repo/pkg.foo.func5`
            /// * Elixir: `OpenTelemetry.Ctx.new`
            /// * Erlang: `opentelemetry_ctx:new`
            /// * Rust: `playground::my_module::my_cool_func`
            /// * C function: `fopen`
            public static let name = "code.function.name"
        }

        /// `code.line` namespace
        public enum line {
            /// `code.line.number`: The line number in `code.file.path` best representing the operation. It SHOULD point within the code unit named in `code.function.name`. This attribute MUST NOT be used on the Profile signal since the data is already captured in 'message Line'. This constraint is imposed to prevent redundancy and maintain data integrity.
            ///
            /// - Stability: stable
            /// - Type: int
            /// - Example: `42`
            public static let number = "code.line.number"
        }
    }
}
