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
    /// `thread` namespace
    public var thread: ThreadAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct ThreadAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `thread.id` **UNSTABLE**: Current "managed" thread ID (as opposed to OS thread ID).
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `42`
            ///
            /// Examples of where the value can be extracted from:
            ///
            /// | Language or platform | Source |
            /// | --- | --- |
            /// | JVM | `Thread.currentThread().threadId()` |
            /// | .NET | `Thread.CurrentThread.ManagedThreadId` |
            /// | Python | `threading.current_thread().ident` |
            /// | Ruby | `Thread.current.object_id` |
            /// | C++ | `std::this_thread::get_id()` |
            /// | Erlang | `erlang:self()` |
            public var id: SpanAttributeKey<Int> { .init(name: OTelAttribute.thread.id) }

            /// `thread.name` **UNSTABLE**: Current thread name.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `main`
            ///
            /// Examples of where the value can be extracted from:
            ///
            /// | Language or platform | Source |
            /// | --- | --- |
            /// | JVM | `Thread.currentThread().getName()` |
            /// | .NET | `Thread.CurrentThread.Name` |
            /// | Python | `threading.current_thread().name` |
            /// | Ruby | `Thread.current.name` |
            /// | Erlang | `erlang:process_info(self(), registered_name)` |
            public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.thread.name) }
        }
    }
    #endif
}

#endif
