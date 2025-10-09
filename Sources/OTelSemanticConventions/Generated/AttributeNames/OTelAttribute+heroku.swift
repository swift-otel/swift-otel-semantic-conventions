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
    /// `heroku` namespace
    public enum heroku {
        /// `heroku.app` namespace
        public enum app {
            /// `heroku.app.id`: Unique identifier for the application
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `2daa2797-e42b-4624-9322-ec3f968df4da`
            public static let id = "heroku.app.id"
        }

        /// `heroku.release` namespace
        public enum release {
            /// `heroku.release.commit`: Commit hash for the current release
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `e6134959463efd8966b20e75b913cafe3f5ec`
            public static let commit = "heroku.release.commit"

            /// `heroku.release.creation_timestamp`: Time and date the release was created
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `2022-10-23T18:00:42Z`
            public static let creationTimestamp = "heroku.release.creation_timestamp"
        }
    }
    #endif
}
