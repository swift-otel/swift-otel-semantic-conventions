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

            /// `cpu.logical_number`: The logical CPU number [0..n-1]
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `1`
            public var logicalNumber: SpanAttributeKey<Int> { .init(name: OTelAttribute.cpu.logicalNumber) }

            /// `cpu.mode`: The mode of the CPU
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `user`: User
            ///     - `system`: System
            ///     - `nice`: Nice
            ///     - `idle`: Idle
            ///     - `iowait`: IO Wait
            ///     - `interrupt`: Interrupt
            ///     - `steal`: Steal
            ///     - `kernel`: Kernel
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
