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
    /// `pprof` namespace
    public enum pprof {
        /// `pprof.location` namespace
        public enum location {
            /// `pprof.location.is_folded` **UNSTABLE**: Provides an indication that multiple symbols map to this location's address, for example due to identical code folding by the linker. In that case the line information represents one of the multiple symbols. This field must be recomputed when the symbolization state of the profile changes.
            ///
            /// - Stability: development
            /// - Type: boolean
            public static let isFolded = "pprof.location.is_folded"
        }

        /// `pprof.mapping` namespace
        public enum mapping {
            /// `pprof.mapping.has_filenames` **UNSTABLE**: Indicates that there are filenames related to this mapping.
            ///
            /// - Stability: development
            /// - Type: boolean
            public static let hasFilenames = "pprof.mapping.has_filenames"

            /// `pprof.mapping.has_functions` **UNSTABLE**: Indicates that there are functions related to this mapping.
            ///
            /// - Stability: development
            /// - Type: boolean
            public static let hasFunctions = "pprof.mapping.has_functions"

            /// `pprof.mapping.has_inline_frames` **UNSTABLE**: Indicates that there are inline frames related to this mapping.
            ///
            /// - Stability: development
            /// - Type: boolean
            public static let hasInlineFrames = "pprof.mapping.has_inline_frames"

            /// `pprof.mapping.has_line_numbers` **UNSTABLE**: Indicates that there are line numbers related to this mapping.
            ///
            /// - Stability: development
            /// - Type: boolean
            public static let hasLineNumbers = "pprof.mapping.has_line_numbers"
        }

        /// `pprof.profile` namespace
        public enum profile {
            /// `pprof.profile.comment` **UNSTABLE**: Free-form text associated with the profile. This field should not be used to store any machine-readable information, it is only for human-friendly content.
            ///
            /// - Stability: development
            /// - Type: stringArray
            public static let comment = "pprof.profile.comment"
        }
    }
    #endif
}
