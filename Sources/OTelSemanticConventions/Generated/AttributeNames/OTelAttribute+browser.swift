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
        /// `browser.brands` **UNSTABLE**: Array of brand name and version separated by a space
        ///
        /// - Stability: development
        /// - Type: stringArray
        ///
        /// This value is intended to be taken from the [UA client hints API](https://wicg.github.io/ua-client-hints/#interface) (`navigator.userAgentData.brands`).
        public static let brands = "browser.brands"

        /// `browser.language` **UNSTABLE**: Preferred language of the user using the browser
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

        /// `browser.mobile` **UNSTABLE**: A boolean that is true if the browser is running on a mobile device
        ///
        /// - Stability: development
        /// - Type: boolean
        ///
        /// This value is intended to be taken from the [UA client hints API](https://wicg.github.io/ua-client-hints/#interface) (`navigator.userAgentData.mobile`). If unavailable, this attribute SHOULD be left unset.
        public static let mobile = "browser.mobile"

        /// `browser.platform` **UNSTABLE**: The platform on which the browser is running
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

        /// `browser.document` namespace
        public enum document {
            /// `browser.document.url` namespace
            public enum url {
                /// `browser.document.url.full` **UNSTABLE**: Absolute URL of the current browser document according to [RFC3986](https://www.rfc-editor.org/rfc/rfc3986).
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `https://www.example.com/search?q=OpenTelemetry#SemConv`
                public static let full = "browser.document.url.full"
            }
        }

        /// `browser.web_vital` namespace
        public enum webVital {
            /// `browser.web_vital.delta` **UNSTABLE**: The delta between the current value and the last-reported value. See [delta](https://github.com/GoogleChrome/web-vitals?tab=readme-ov-file#report-only-the-delta-of-changes).
            ///
            /// - Stability: development
            /// - Type: double
            /// - Example: `0.2`
            public static let delta = "browser.web_vital.delta"

            /// `browser.web_vital.id` **UNSTABLE**: A unique ID representing this particular metric instance.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `v3-1677874579383-6381583661209`
            public static let id = "browser.web_vital.id"

            /// `browser.web_vital.name` **UNSTABLE**: Name of the web vital.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `cls`: Cumulative Layout Shift. See [cls](https://web.dev/articles/cls).
            ///     - `lcp`: Largest Contentful Paint. See [lcp](https://web.dev/articles/lcp).
            ///     - `fcp`: First Contentful Paint. See [fcp](https://web.dev/articles/fcp).
            ///     - `inp`: Interaction to Next Paint. See [inp](https://web.dev/articles/inp).
            ///     - `ttfb`: Time to First Byte. See [ttfb](https://web.dev/articles/ttfb).
            ///     - `fid`: First Input Delay. See [fid](https://web.dev/articles/fid).
            /// - Example: `cls`
            public static let name = "browser.web_vital.name"

            /// `browser.web_vital.navigation_type` **UNSTABLE**: The type of navigation, as reported by the [Navigation Timing API](https://developer.mozilla.org/docs/Web/API/PerformanceNavigationTiming/type), with additional values reported by the web-vitals library.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `navigate`: Navigation started by clicking a link, entering a URL, form submission, or a script operation.
            ///     - `reload`: Navigation through a reload operation or a `Location.reload()` call.
            ///     - `back-forward`: Navigation through the browser's history traversal (e.g. back/forward buttons).
            ///     - `back-forward-cache`: Navigation restoring a page from the back/forward cache (bfcache).
            ///     - `prerender`: Navigation to a page that was prerendered.
            ///     - `restore`: Navigation restoring a page that was previously discarded by the browser.
            /// - Example: `navigate`
            public static let navigationType = "browser.web_vital.navigation_type"

            /// `browser.web_vital.rating` **UNSTABLE**: The rating of the web vital value against the "good", "needs improvement", and "poor" thresholds defined for the metric.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `good`: The metric value is within the "good" threshold.
            ///     - `needs-improvement`: The metric value is within the "needs improvement" threshold.
            ///     - `poor`: The metric value is within the "poor" threshold.
            /// - Example: `good`
            public static let rating = "browser.web_vital.rating"

            /// `browser.web_vital.value` **UNSTABLE**: Value of the web vital.
            ///
            /// - Stability: development
            /// - Type: double
            /// - Example: `1.0`
            public static let value = "browser.web_vital.value"
        }
    }
    #endif
}
