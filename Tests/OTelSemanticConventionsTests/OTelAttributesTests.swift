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

import OTelSemanticConventions
import Testing

struct OTelAttributesTests {
    @Test func attributes() {
        #expect(OTelAttribute.http.response.statusCode == "http.response.status_code")
    }

    @Test func avoidsSwiftKeywordOverlap() {
        // Check Swift keywords are escaped (in this case, type)
        #expect(OTelAttribute.error.type == "error.type")
    }

    #if Experimental
    @Test func experimentalAttributes() {
        // Check experimental attributes are available
        #expect(OTelAttribute.cassandra.page.size == "cassandra.page.size")
    }
    #endif
}
