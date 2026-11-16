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
    /// `cpu` namespace
    public var cpu: CpuAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
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

            /// `cpu.logical_number` **UNSTABLE**: The identifier of a logical execution target (CPU) as seen by the operating system, in the range [0..n-1].
            ///
            /// - Stability: releaseCandidate
            /// - Type: int
            /// - Example: `1`
            ///
            /// On systems with simultaneous multithreading (SMT) enabled — such as Intel Hyper-Threading or AMD SMT — this value will usually differ from the physical core number, because each core presents multiple logical CPUs for the system to use.
            public var logicalNumber: SpanAttributeKey<Int> { .init(name: OTelAttribute.cpu.logicalNumber) }

            /// `cpu.mode` **UNSTABLE**: The mode of the CPU
            ///
            /// - Stability: releaseCandidate
            /// - Type: enum
            ///     - `user`: User
            ///     - `system`: System
            ///     - `nice`: Nice
            ///     - `idle`: Idle
            ///     - `iowait`: IO Wait
            ///     - `interrupt`: Interrupt
            ///     - `steal`: Steal
            ///     - `kernel`: Deprecated. Use `system` instead.
            /// - Examples:
            ///     - `user`
            ///     - `system`
            public var mode: SpanAttributeKey<ModeEnum> { .init(name: OTelAttribute.cpu.mode) }

            public struct ModeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
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

#endif
