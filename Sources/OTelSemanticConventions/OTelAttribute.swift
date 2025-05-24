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

/// This type provides access to OpenTelemetry attribute names. To use it, simply "dot-call" the desired attribute:
/// `OTelAttribute.http.response.statusCode`.
///
/// If using these names in spans, it may be more convenient to use the extensions on `SpanAttribute` itself.
public enum OTelAttribute {}
