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
    /// `device` namespace
    public var device: DeviceAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct DeviceAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `device.id`: A unique identifier representing the device
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `123456789012345`
            ///     - `01:23:45:67:89:AB`
            ///
            /// Its value SHOULD be identical for all apps on a device and it SHOULD NOT change if an app is uninstalled and re-installed.
            /// However, it might be resettable by the user for all apps on a device.
            /// Hardware IDs (e.g. vendor-specific serial number, IMEI or MAC address) MAY be used as values.
            ///
            /// More information about Android identifier best practices can be found in the [Android user data IDs guide](https://developer.android.com/training/articles/user-data-ids).
            ///
            /// > [!WARNING]
            /// >
            /// > This attribute may contain sensitive (PII) information. Caution should be taken when storing personal data or anything which can identify a user. GDPR and data protection laws may apply,
            /// > ensure you do your own due diligence.
            /// >
            /// > Due to these reasons, this identifier is not recommended for consumer applications and will likely result in rejection from both Google Play and App Store.
            /// > However, it may be appropriate for specific enterprise scenarios, such as kiosk devices or enterprise-managed devices, with appropriate compliance clearance.
            /// > Any instrumentation providing this identifier MUST implement it as an opt-in feature.
            /// >
            /// > See [`app.installation.id`](/docs/registry/attributes/app.md#app-installation-id) for a more privacy-preserving alternative.
            public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.device.id) }

            /// `device.manufacturer`: The name of the device manufacturer
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `Apple`
            ///     - `Samsung`
            ///
            /// The Android OS provides this field via [Build](https://developer.android.com/reference/android/os/Build#MANUFACTURER). iOS apps SHOULD hardcode the value `Apple`.
            public var manufacturer: SpanAttributeKey<String> { .init(name: OTelAttribute.device.manufacturer) }
        }

        /// `device.model` namespace
        public var model: ModelAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ModelAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `device.model.identifier`: The model identifier for the device
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `iPhone3,4`
                ///     - `SM-G920F`
                ///
                /// It's recommended this value represents a machine-readable version of the model identifier rather than the market or consumer-friendly name of the device.
                public var identifier: SpanAttributeKey<String> { .init(name: OTelAttribute.device.model.identifier) }

                /// `device.model.name`: The marketing name for the device model
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `iPhone 6s Plus`
                ///     - `Samsung Galaxy S6`
                ///
                /// It's recommended this value represents a human-readable version of the device model rather than a machine-readable alternative.
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.device.model.name) }
            }
        }
    }
    #endif
}

#endif
