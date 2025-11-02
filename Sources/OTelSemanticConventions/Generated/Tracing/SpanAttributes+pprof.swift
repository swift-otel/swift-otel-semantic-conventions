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
    /// `pprof` namespace
    public var pprof: PprofAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct PprofAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
        }

        /// `pprof.location` namespace
        public var location: LocationAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct LocationAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `pprof.location.is_folded` **UNSTABLE**: Provides an indication that multiple symbols map to this location's address, for example due to identical code folding by the linker. In that case the line information represents one of the multiple symbols. This field must be recomputed when the symbolization state of the profile changes.
                ///
                /// - Stability: development
                /// - Type: boolean
                public var isFolded: SpanAttributeKey<Bool> { .init(name: OTelAttribute.pprof.location.isFolded) }
            }
        }

        /// `pprof.mapping` namespace
        public var mapping: MappingAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct MappingAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `pprof.mapping.has_filenames` **UNSTABLE**: Indicates that there are filenames related to this mapping.
                ///
                /// - Stability: development
                /// - Type: boolean
                public var hasFilenames: SpanAttributeKey<Bool> {
                    .init(name: OTelAttribute.pprof.mapping.hasFilenames)
                }

                /// `pprof.mapping.has_functions` **UNSTABLE**: Indicates that there are functions related to this mapping.
                ///
                /// - Stability: development
                /// - Type: boolean
                public var hasFunctions: SpanAttributeKey<Bool> {
                    .init(name: OTelAttribute.pprof.mapping.hasFunctions)
                }

                /// `pprof.mapping.has_inline_frames` **UNSTABLE**: Indicates that there are inline frames related to this mapping.
                ///
                /// - Stability: development
                /// - Type: boolean
                public var hasInlineFrames: SpanAttributeKey<Bool> {
                    .init(name: OTelAttribute.pprof.mapping.hasInlineFrames)
                }

                /// `pprof.mapping.has_line_numbers` **UNSTABLE**: Indicates that there are line numbers related to this mapping.
                ///
                /// - Stability: development
                /// - Type: boolean
                public var hasLineNumbers: SpanAttributeKey<Bool> {
                    .init(name: OTelAttribute.pprof.mapping.hasLineNumbers)
                }
            }
        }

        /// `pprof.profile` namespace
        public var profile: ProfileAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ProfileAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `pprof.profile.comment` **UNSTABLE**: Free-form text associated with the profile. This field should not be used to store any machine-readable information, it is only for human-friendly content.
                ///
                /// - Stability: development
                /// - Type: stringArray
                public var comment: SpanAttributeKey<[String]> { .init(name: OTelAttribute.pprof.profile.comment) }
            }
        }
    }
    #endif
}

#endif
