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
    /// `geo` namespace
    public var geo: GeoAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct GeoAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `geo.postal_code` **UNSTABLE**: Postal code associated with the location. Values appropriate for this field may also be known as a postcode or ZIP code and will vary widely from country to country.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `94040`
            public var postalCode: SpanAttributeKey<String> { .init(name: OTelAttribute.geo.postalCode) }
        }

        /// `geo.continent` namespace
        public var continent: ContinentAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ContinentAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `geo.continent.code` **UNSTABLE**: Two-letter code representing continent’s name.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `AF`: Africa
                ///     - `AN`: Antarctica
                ///     - `AS`: Asia
                ///     - `EU`: Europe
                ///     - `NA`: North America
                ///     - `OC`: Oceania
                ///     - `SA`: South America
                public var code: SpanAttributeKey<CodeEnum> { .init(name: OTelAttribute.geo.continent.code) }

                public struct CodeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                    public let rawValue: String
                    public init(rawValue: String) {
                        self.rawValue = rawValue
                    }
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
                    }
                }
            }
        }

        /// `geo.country` namespace
        public var country: CountryAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct CountryAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `geo.country.iso_code` **UNSTABLE**: Two-letter ISO Country Code ([ISO 3166-1 alpha2](https://wikipedia.org/wiki/ISO_3166-1#Codes)).
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `CA`
                public var isoCode: SpanAttributeKey<String> { .init(name: OTelAttribute.geo.country.isoCode) }
            }
        }

        /// `geo.locality` namespace
        public var locality: LocalityAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct LocalityAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `geo.locality.name` **UNSTABLE**: Locality name. Represents the name of a city, town, village, or similar populated place.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `Montreal`
                ///     - `Berlin`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.geo.locality.name) }
            }
        }

        /// `geo.location` namespace
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

                /// `geo.location.lat` **UNSTABLE**: Latitude of the geo location in [WGS84](https://wikipedia.org/wiki/World_Geodetic_System#WGS84).
                ///
                /// - Stability: development
                /// - Type: double
                /// - Example: `45.505918`
                public var lat: SpanAttributeKey<Double> { .init(name: OTelAttribute.geo.location.lat) }

                /// `geo.location.lon` **UNSTABLE**: Longitude of the geo location in [WGS84](https://wikipedia.org/wiki/World_Geodetic_System#WGS84).
                ///
                /// - Stability: development
                /// - Type: double
                /// - Example: `-73.614830`
                public var lon: SpanAttributeKey<Double> { .init(name: OTelAttribute.geo.location.lon) }
            }
        }

        /// `geo.region` namespace
        public var region: RegionAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct RegionAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `geo.region.iso_code` **UNSTABLE**: Region ISO code ([ISO 3166-2](https://wikipedia.org/wiki/ISO_3166-2)).
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `CA-QC`
                public var isoCode: SpanAttributeKey<String> { .init(name: OTelAttribute.geo.region.isoCode) }
            }
        }
    }
    #endif
}

#endif
