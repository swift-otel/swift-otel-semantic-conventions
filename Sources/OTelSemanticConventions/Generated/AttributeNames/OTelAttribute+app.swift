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
    /// `app` namespace
    public enum app {
        /// `app.build_id`: Unique identifier for a particular build or compilation of the application.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Examples:
        ///     - `6cff0a7e-cefc-4668-96f5-1273d8b334d0`
        ///     - `9f2b833506aa6973a92fde9733e6271f`
        ///     - `my-app-1.0.0-code-123`
        public static let buildId = "app.build_id"

        /// `app.installation` namespace
        public enum installation {
            /// `app.installation.id`: A unique identifier representing the installation of an application on a specific device
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `2ab2916d-a51f-4ac8-80ee-45ac31a28092`
            ///
            /// Its value SHOULD persist across launches of the same application installation, including through application upgrades.
            /// It SHOULD change if the application is uninstalled or if all applications of the vendor are uninstalled.
            /// Additionally, users might be able to reset this value (e.g. by clearing application data).
            /// If an app is installed multiple times on the same device (e.g. in different accounts on Android), each `app.installation.id` SHOULD have a different value.
            /// If multiple OpenTelemetry SDKs are used within the same application, they SHOULD use the same value for `app.installation.id`.
            /// Hardware IDs (e.g. serial number, IMEI, MAC address) MUST NOT be used as the `app.installation.id`.
            ///
            /// For iOS, this value SHOULD be equal to the [vendor identifier](https://developer.apple.com/documentation/uikit/uidevice/identifierforvendor).
            ///
            /// For Android, examples of `app.installation.id` implementations include:
            ///
            /// - [Firebase Installation ID](https://firebase.google.com/docs/projects/manage-installations).
            /// - A globally unique UUID which is persisted across sessions in your application.
            /// - [App set ID](https://developer.android.com/identity/app-set-id).
            /// - [`Settings.getString(Settings.Secure.ANDROID_ID)`](https://developer.android.com/reference/android/provider/Settings.Secure#ANDROID_ID).
            ///
            /// More information about Android identifier best practices can be found in the [Android user data IDs guide](https://developer.android.com/training/articles/user-data-ids).
            public static let id = "app.installation.id"
        }

        /// `app.jank` namespace
        public enum jank {
            /// `app.jank.frame_count`: A number of frame renders that experienced jank.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Examples:
            ///     - `9`
            ///     - `42`
            ///
            /// Depending on platform limitations, the value provided MAY be approximation.
            public static let frameCount = "app.jank.frame_count"

            /// `app.jank.period`: The time period, in seconds, for which this jank is being reported.
            ///
            /// - Stability: development
            /// - Type: double
            /// - Examples:
            ///     - `1.0`
            ///     - `5.0`
            ///     - `10.24`
            public static let period = "app.jank.period"

            /// `app.jank.threshold`: The minimum rendering threshold for this jank, in seconds.
            ///
            /// - Stability: development
            /// - Type: double
            /// - Examples:
            ///     - `0.016`
            ///     - `0.700`
            ///     - `1.024`
            public static let threshold = "app.jank.threshold"
        }

        /// `app.screen` namespace
        public enum screen {
            /// `app.screen.coordinate` namespace
            public enum coordinate {
                /// `app.screen.coordinate.x`: The x (horizontal) coordinate of a screen coordinate, in screen pixels.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Examples:
                ///     - `0`
                ///     - `131`
                public static let x = "app.screen.coordinate.x"

                /// `app.screen.coordinate.y`: The y (vertical) component of a screen coordinate, in screen pixels.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Examples:
                ///     - `12`
                ///     - `99`
                public static let y = "app.screen.coordinate.y"
            }
        }

        /// `app.widget` namespace
        public enum widget {
            /// `app.widget.id`: An identifier that uniquely differentiates this widget from other widgets in the same application.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `f9bc787d-ff05-48ad-90e1-fca1d46130b3`
            ///     - `submit_order_1829`
            ///
            /// A widget is an application component, typically an on-screen visual GUI element.
            public static let id = "app.widget.id"

            /// `app.widget.name`: The name of an application widget.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `submit`
            ///     - `attack`
            ///     - `Clear Cart`
            ///
            /// A widget is an application component, typically an on-screen visual GUI element.
            public static let name = "app.widget.name"
        }
    }
    #endif
}
