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
    /// `webengine` namespace
    public enum webengine {
        /// `webengine.description`: Additional description of the web engine (e.g. detailed version and edition information).
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `WildFly Full 21.0.0.Final (WildFly Core 13.0.1.Final) - 2.2.2.Final`
        public static let description = "webengine.description"

        /// `webengine.name`: The name of the web engine.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `WildFly`
        public static let name = "webengine.name"

        /// `webengine.version`: The version of the web engine.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `21.0.0`
        public static let version = "webengine.version"
    }
    #endif
}
