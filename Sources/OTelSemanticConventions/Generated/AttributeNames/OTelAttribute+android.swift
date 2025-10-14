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
    /// `android` namespace
    public enum android {
        /// `android.state` **UNSTABLE**: Deprecated. Use `android.app.state` attribute instead.
        ///
        /// - Stability: development
        /// - Type: enum
        ///     - `created`: Any time before Activity.onResume() or, if the app has no Activity, Context.startService() has been called in the app for the first time.
        ///     - `background`: Any time after Activity.onPause() or, if the app has no Activity, Context.stopService() has been called when the app was in the foreground state.
        ///     - `foreground`: Any time after Activity.onResume() or, if the app has no Activity, Context.startService() has been called when the app was in either the created or background states.
        @available(*, deprecated, renamed: "OTelAttribute.android.app.state")
        public static let state = "android.state"

        /// `android.app` namespace
        public enum app {
            /// `android.app.state` **UNSTABLE**: This attribute represents the state of the application.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `created`: Any time before Activity.onResume() or, if the app has no Activity, Context.startService() has been called in the app for the first time.
            ///     - `background`: Any time after Activity.onPause() or, if the app has no Activity, Context.stopService() has been called when the app was in the foreground state.
            ///     - `foreground`: Any time after Activity.onResume() or, if the app has no Activity, Context.startService() has been called when the app was in either the created or background states.
            /// - Example: `created`
            ///
            /// The Android lifecycle states are defined in [Activity lifecycle callbacks](https://developer.android.com/guide/components/activities/activity-lifecycle#lc), and from which the `OS identifiers` are derived.
            public static let state = "android.app.state"
        }

        /// `android.os` namespace
        public enum os {
            /// `android.os.api_level` **UNSTABLE**: Uniquely identifies the framework API revision offered by a version (`os.version`) of the android operating system. More information can be found in the [Android API levels documentation](https://developer.android.com/guide/topics/manifest/uses-sdk-element#ApiLevels).
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `33`
            ///     - `32`
            public static let apiLevel = "android.os.api_level"
        }
    }
    #endif
}
