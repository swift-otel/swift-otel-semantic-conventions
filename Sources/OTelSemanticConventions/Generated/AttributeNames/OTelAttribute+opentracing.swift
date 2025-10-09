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
    /// `opentracing` namespace
    public enum opentracing {
        /// `opentracing.ref_type`: Parent-child Reference type
        ///
        /// - Stability: development
        /// - Type: enum
        ///     - `child_of`: The parent Span depends on the child Span in some capacity
        ///     - `follows_from`: The parent Span doesn't depend in any way on the result of the child Span
        ///
        /// The causal relationship between a child Span and a parent Span.
        public static let refType = "opentracing.ref_type"
    }
    #endif
}
