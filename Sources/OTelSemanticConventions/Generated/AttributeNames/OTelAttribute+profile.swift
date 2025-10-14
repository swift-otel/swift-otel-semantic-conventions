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
    /// `profile` namespace
    public enum profile {
        /// `profile.frame` namespace
        public enum frame {
            /// `profile.frame.type` **UNSTABLE**: Describes the interpreter or compiler of a single frame.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `dotnet`: [.NET](https://wikipedia.org/wiki/.NET)
            ///     - `jvm`: [JVM](https://wikipedia.org/wiki/Java_virtual_machine)
            ///     - `kernel`: [Kernel](https://wikipedia.org/wiki/Kernel_(operating_system))
            ///     - `native`: Can be one of but not limited to [C](https://wikipedia.org/wiki/C_(programming_language)), [C++](https://wikipedia.org/wiki/C%2B%2B), [Go](https://wikipedia.org/wiki/Go_(programming_language)) or [Rust](https://wikipedia.org/wiki/Rust_(programming_language)). If possible, a more precise value MUST be used.
            ///     - `perl`: [Perl](https://wikipedia.org/wiki/Perl)
            ///     - `php`: [PHP](https://wikipedia.org/wiki/PHP)
            ///     - `cpython`: [Python](https://wikipedia.org/wiki/Python_(programming_language))
            ///     - `ruby`: [Ruby](https://wikipedia.org/wiki/Ruby_(programming_language))
            ///     - `v8js`: [V8JS](https://wikipedia.org/wiki/V8_(JavaScript_engine))
            ///     - `beam`: [Erlang](https://en.wikipedia.org/wiki/BEAM_(Erlang_virtual_machine))
            ///     - `go`: [Go](https://wikipedia.org/wiki/Go_(programming_language)),
            ///     - `rust`: [Rust](https://wikipedia.org/wiki/Rust_(programming_language))
            /// - Example: `cpython`
            public static let `type` = "profile.frame.type"
        }
    }
    #endif
}
