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
    /// `cloudfoundry` namespace
    public var cloudfoundry: CloudfoundryAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct CloudfoundryAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
        }

        /// `cloudfoundry.app` namespace
        public var app: AppAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct AppAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `cloudfoundry.app.id` **UNSTABLE**: The guid of the application.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `218fc5a9-a5f1-4b54-aa05-46717d0ab26d`
                ///
                /// Application instrumentation should use the value from environment
                /// variable `VCAP_APPLICATION.application_id`. This is the same value as
                /// reported by `cf app <app-name> --guid`.
                public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.cloudfoundry.app.id) }

                /// `cloudfoundry.app.name` **UNSTABLE**: The name of the application.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `my-app-name`
                ///
                /// Application instrumentation should use the value from environment
                /// variable `VCAP_APPLICATION.application_name`. This is the same value
                /// as reported by `cf apps`.
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.cloudfoundry.app.name) }
            }

            /// `cloudfoundry.app.instance` namespace
            public var instance: InstanceAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct InstanceAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `cloudfoundry.app.instance.id` **UNSTABLE**: The index of the application instance. 0 when just one instance is active.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Examples:
                    ///     - `0`
                    ///     - `1`
                    ///
                    /// CloudFoundry defines the `instance_id` in the [Loggregator v2 envelope](https://github.com/cloudfoundry/loggregator-api#v2-envelope).
                    /// It is used for logs and metrics emitted by CloudFoundry. It is
                    /// supposed to contain the application instance index for applications
                    /// deployed on the runtime.
                    ///
                    /// Application instrumentation should use the value from environment
                    /// variable `CF_INSTANCE_INDEX`.
                    public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.cloudfoundry.app.instance.id) }
                }
            }
        }

        /// `cloudfoundry.org` namespace
        public var org: OrgAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct OrgAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `cloudfoundry.org.id` **UNSTABLE**: The guid of the CloudFoundry org the application is running in.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `218fc5a9-a5f1-4b54-aa05-46717d0ab26d`
                ///
                /// Application instrumentation should use the value from environment
                /// variable `VCAP_APPLICATION.org_id`. This is the same value as
                /// reported by `cf org <org-name> --guid`.
                public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.cloudfoundry.org.id) }

                /// `cloudfoundry.org.name` **UNSTABLE**: The name of the CloudFoundry organization the app is running in.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `my-org-name`
                ///
                /// Application instrumentation should use the value from environment
                /// variable `VCAP_APPLICATION.org_name`. This is the same value as
                /// reported by `cf orgs`.
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.cloudfoundry.org.name) }
            }
        }

        /// `cloudfoundry.process` namespace
        public var process: ProcessAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ProcessAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `cloudfoundry.process.id` **UNSTABLE**: The UID identifying the process.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `218fc5a9-a5f1-4b54-aa05-46717d0ab26d`
                ///
                /// Application instrumentation should use the value from environment
                /// variable `VCAP_APPLICATION.process_id`. It is supposed to be equal to
                /// `VCAP_APPLICATION.app_id` for applications deployed to the runtime.
                /// For system components, this could be the actual PID.
                public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.cloudfoundry.process.id) }

                /// `cloudfoundry.process.type` **UNSTABLE**: The type of process.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `web`
                ///
                /// CloudFoundry applications can consist of multiple jobs. Usually the
                /// main process will be of type `web`. There can be additional background
                /// tasks or side-cars with different process types.
                public var `type`: SpanAttributeKey<String> { .init(name: OTelAttribute.cloudfoundry.process.`type`) }
            }
        }

        /// `cloudfoundry.space` namespace
        public var space: SpaceAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct SpaceAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `cloudfoundry.space.id` **UNSTABLE**: The guid of the CloudFoundry space the application is running in.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `218fc5a9-a5f1-4b54-aa05-46717d0ab26d`
                ///
                /// Application instrumentation should use the value from environment
                /// variable `VCAP_APPLICATION.space_id`. This is the same value as
                /// reported by `cf space <space-name> --guid`.
                public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.cloudfoundry.space.id) }

                /// `cloudfoundry.space.name` **UNSTABLE**: The name of the CloudFoundry space the application is running in.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `my-space-name`
                ///
                /// Application instrumentation should use the value from environment
                /// variable `VCAP_APPLICATION.space_name`. This is the same value as
                /// reported by `cf spaces`.
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.cloudfoundry.space.name) }
            }
        }

        /// `cloudfoundry.system` namespace
        public var system: SystemAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct SystemAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `cloudfoundry.system.id` **UNSTABLE**: A guid or another name describing the event source.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `cf/gorouter`
                ///
                /// CloudFoundry defines the `source_id` in the [Loggregator v2 envelope](https://github.com/cloudfoundry/loggregator-api#v2-envelope).
                /// It is used for logs and metrics emitted by CloudFoundry. It is
                /// supposed to contain the component name, e.g. "gorouter", for
                /// CloudFoundry components.
                ///
                /// When system components are instrumented, values from the
                /// [Bosh spec](https://bosh.io/docs/jobs/#properties-spec)
                /// should be used. The `system.id` should be set to
                /// `spec.deployment/spec.name`.
                public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.cloudfoundry.system.id) }
            }

            /// `cloudfoundry.system.instance` namespace
            public var instance: InstanceAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct InstanceAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `cloudfoundry.system.instance.id` **UNSTABLE**: A guid describing the concrete instance of the event source.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `218fc5a9-a5f1-4b54-aa05-46717d0ab26d`
                    ///
                    /// CloudFoundry defines the `instance_id` in the [Loggregator v2 envelope](https://github.com/cloudfoundry/loggregator-api#v2-envelope).
                    /// It is used for logs and metrics emitted by CloudFoundry. It is
                    /// supposed to contain the vm id for CloudFoundry components.
                    ///
                    /// When system components are instrumented, values from the
                    /// [Bosh spec](https://bosh.io/docs/jobs/#properties-spec)
                    /// should be used. The `system.instance.id` should be set to `spec.id`.
                    public var id: SpanAttributeKey<String> {
                        .init(name: OTelAttribute.cloudfoundry.system.instance.id)
                    }
                }
            }
        }
    }
    #endif
}

#endif
