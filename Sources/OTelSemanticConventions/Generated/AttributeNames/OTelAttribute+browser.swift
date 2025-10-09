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
    /// `browser` namespace
    public enum browser {
        /// `browser.brands`: Array of brand name and version separated by a space
        ///
        /// - Stability: development
        /// - Type: stringArray
        ///
        /// This value is intended to be taken from the [UA client hints API](https://wicg.github.io/ua-client-hints/#interface) (`navigator.userAgentData.brands`).
        public static let brands = "browser.brands"

        /// `browser.language`: Preferred language of the user using the browser
        ///
        /// - Stability: development
        /// - Type: string
        /// - Examples:
        ///     - `en`
        ///     - `en-US`
        ///     - `fr`
        ///     - `fr-FR`
        ///
        /// This value is intended to be taken from the Navigator API `navigator.language`.
        public static let language = "browser.language"

        /// `browser.mobile`: A boolean that is true if the browser is running on a mobile device
        ///
        /// - Stability: development
        /// - Type: boolean
        ///
        /// This value is intended to be taken from the [UA client hints API](https://wicg.github.io/ua-client-hints/#interface) (`navigator.userAgentData.mobile`). If unavailable, this attribute SHOULD be left unset.
        public static let mobile = "browser.mobile"

        /// `browser.platform`: The platform on which the browser is running
        ///
        /// - Stability: development
        /// - Type: string
        /// - Examples:
        ///     - `Windows`
        ///     - `macOS`
        ///     - `Android`
        ///
        /// This value is intended to be taken from the [UA client hints API](https://wicg.github.io/ua-client-hints/#interface) (`navigator.userAgentData.platform`). If unavailable, the legacy `navigator.platform` API SHOULD NOT be used instead and this attribute SHOULD be left unset in order for the values to be consistent.
        /// The list of possible values is defined in the [W3C User-Agent Client Hints specification](https://wicg.github.io/ua-client-hints/#sec-ch-ua-platform). Note that some (but not all) of these values can overlap with values in the [`os.type` and `os.name` attributes](./os.md). However, for consistency, the values in the `browser.platform` attribute should capture the exact value that the user agent provides.
        public static let platform = "browser.platform"
    }
    #endif
}
