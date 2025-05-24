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

#if Tracing

import OTelSemanticConventions
import Testing
import Tracing

struct SpanAttributeTests {
    @Test func spanAttributes() async throws {
        var attributes = SpanAttributes()
        attributes.http.response.statusCode = 200
        #expect(attributes.get(OTelAttribute.http.response.statusCode) == 200)
    }

    @Test func spanAttributesEnum() async throws {
        var attributes = SpanAttributes()
        attributes.http.request.method = .post
        #expect(attributes.get(OTelAttribute.http.request.method) == "POST")
    }

    @Test func spanAttributesTemplate() async throws {
        var attributes = SpanAttributes()
        attributes.http.request.header.set("X-Foo", to: ["bar", "baz"])
        #expect(attributes.get(OTelAttribute.http.request.header + ".x_foo") == .stringArray(["bar", "baz"]))
    }
}

#endif
