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
    /// `geo` namespace
    public enum geo {
        /// `geo.postal_code`: Postal code associated with the location. Values appropriate for this field may also be known as a postcode or ZIP code and will vary widely from country to country.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `94040`
        public static let postalCode = "geo.postal_code"

        /// `geo.continent` namespace
        public enum continent {
            /// `geo.continent.code`: Two-letter code representing continent’s name.
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
            public static let code = "geo.continent.code"
        }

        /// `geo.country` namespace
        public enum country {
            /// `geo.country.iso_code`: Two-letter ISO Country Code ([ISO 3166-1 alpha2](https://wikipedia.org/wiki/ISO_3166-1#Codes)).
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `CA`
            public static let isoCode = "geo.country.iso_code"
        }

        /// `geo.locality` namespace
        public enum locality {
            /// `geo.locality.name`: Locality name. Represents the name of a city, town, village, or similar populated place.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `Montreal`
            ///     - `Berlin`
            public static let name = "geo.locality.name"
        }

        /// `geo.location` namespace
        public enum location {
            /// `geo.location.lat`: Latitude of the geo location in [WGS84](https://wikipedia.org/wiki/World_Geodetic_System#WGS84).
            ///
            /// - Stability: development
            /// - Type: double
            /// - Example: `45.505918`
            public static let lat = "geo.location.lat"

            /// `geo.location.lon`: Longitude of the geo location in [WGS84](https://wikipedia.org/wiki/World_Geodetic_System#WGS84).
            ///
            /// - Stability: development
            /// - Type: double
            /// - Example: `-73.614830`
            public static let lon = "geo.location.lon"
        }

        /// `geo.region` namespace
        public enum region {
            /// `geo.region.iso_code`: Region ISO code ([ISO 3166-2](https://wikipedia.org/wiki/ISO_3166-2)).
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `CA-QC`
            public static let isoCode = "geo.region.iso_code"
        }
    }
    #endif
}
