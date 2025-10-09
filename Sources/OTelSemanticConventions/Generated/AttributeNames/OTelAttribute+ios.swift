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
    /// `ios` namespace
    public enum ios {
        /// `ios.state`: Deprecated. Use the `ios.app.state` attribute.
        ///
        /// - Stability: development
        /// - Type: enum
        ///     - `active`: The app has become `active`. Associated with UIKit notification `applicationDidBecomeActive`.
        ///     - `inactive`: The app is now `inactive`. Associated with UIKit notification `applicationWillResignActive`.
        ///     - `background`: The app is now in the background. This value is associated with UIKit notification `applicationDidEnterBackground`.
        ///     - `foreground`: The app is now in the foreground. This value is associated with UIKit notification `applicationWillEnterForeground`.
        ///     - `terminate`: The app is about to terminate. Associated with UIKit notification `applicationWillTerminate`.
        ///
        /// The iOS lifecycle states are defined in the [UIApplicationDelegate documentation](https://developer.apple.com/documentation/uikit/uiapplicationdelegate), and from which the `OS terminology` column values are derived.
        @available(*, deprecated, renamed: "OTelAttribute.ios.app.state")
        public static let state = "ios.state"

        /// `ios.app` namespace
        public enum app {
            /// `ios.app.state`: This attribute represents the state of the application.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `active`: The app has become `active`. Associated with UIKit notification `applicationDidBecomeActive`.
            ///     - `inactive`: The app is now `inactive`. Associated with UIKit notification `applicationWillResignActive`.
            ///     - `background`: The app is now in the background. This value is associated with UIKit notification `applicationDidEnterBackground`.
            ///     - `foreground`: The app is now in the foreground. This value is associated with UIKit notification `applicationWillEnterForeground`.
            ///     - `terminate`: The app is about to terminate. Associated with UIKit notification `applicationWillTerminate`.
            ///
            /// The iOS lifecycle states are defined in the [UIApplicationDelegate documentation](https://developer.apple.com/documentation/uikit/uiapplicationdelegate), and from which the `OS terminology` column values are derived.
            public static let state = "ios.app.state"
        }
    }
    #endif
}
