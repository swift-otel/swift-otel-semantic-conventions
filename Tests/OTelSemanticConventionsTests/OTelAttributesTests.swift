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

struct OTelHTTPAttributesTests {
    @Test func attributes() {
        #expect(OTelAttribute.http.response.statusCode == "http.response.status_code")
        // TODO: Re-enable this check when we have generated attributes that overlap with Swift keywords
        // #expect(OTelAttribute.error.type == "error.type") // Check Swift keywords (in this case, type)
    }
}
