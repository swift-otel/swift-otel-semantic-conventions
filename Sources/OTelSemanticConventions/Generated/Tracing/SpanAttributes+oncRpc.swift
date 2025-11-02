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
    /// `onc_rpc` namespace
    public var oncRpc: OncRpcAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct OncRpcAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `onc_rpc.version` **UNSTABLE**: ONC/Sun RPC program version.
            ///
            /// - Stability: development
            /// - Type: int
            public var version: SpanAttributeKey<Int> { .init(name: OTelAttribute.oncRpc.version) }
        }

        /// `onc_rpc.procedure` namespace
        public var procedure: ProcedureAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ProcedureAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `onc_rpc.procedure.name` **UNSTABLE**: ONC/Sun RPC procedure name.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `OPEN`
                ///     - `READ`
                ///     - `GETATTR`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.oncRpc.procedure.name) }

                /// `onc_rpc.procedure.number` **UNSTABLE**: ONC/Sun RPC procedure number.
                ///
                /// - Stability: development
                /// - Type: int
                public var number: SpanAttributeKey<Int> { .init(name: OTelAttribute.oncRpc.procedure.number) }
            }
        }

        /// `onc_rpc.program` namespace
        public var program: ProgramAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ProgramAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `onc_rpc.program.name` **UNSTABLE**: ONC/Sun RPC program name.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `portmapper`
                ///     - `nfs`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.oncRpc.program.name) }
            }
        }
    }
    #endif
}

#endif
