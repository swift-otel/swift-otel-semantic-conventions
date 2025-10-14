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
    /// `gcp` namespace
    public var gcp: GcpAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct GcpAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
        }

        /// `gcp.apphub` namespace
        public var apphub: ApphubAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ApphubAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
            }

            /// `gcp.apphub.application` namespace
            public var application: ApplicationAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct ApplicationAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `gcp.apphub.application.container` **UNSTABLE**: The container within GCP where the AppHub application is defined.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `projects/my-container-project`
                    public var container: SpanAttributeKey<String> {
                        .init(name: OTelAttribute.gcp.apphub.application.container)
                    }

                    /// `gcp.apphub.application.id` **UNSTABLE**: The name of the application as configured in AppHub.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `my-application`
                    public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.gcp.apphub.application.id) }

                    /// `gcp.apphub.application.location` **UNSTABLE**: The GCP zone or region where the application is defined.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `us-central1`
                    public var location: SpanAttributeKey<String> {
                        .init(name: OTelAttribute.gcp.apphub.application.location)
                    }
                }
            }

            /// `gcp.apphub.service` namespace
            public var service: ServiceAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct ServiceAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `gcp.apphub.service.criticality_type` **UNSTABLE**: Criticality of a service indicates its importance to the business.
                    ///
                    /// - Stability: development
                    /// - Type: enum
                    ///     - `MISSION_CRITICAL`: Mission critical service.
                    ///     - `HIGH`: High impact.
                    ///     - `MEDIUM`: Medium impact.
                    ///     - `LOW`: Low impact.
                    ///
                    /// [See AppHub type enum](https://cloud.google.com/app-hub/docs/reference/rest/v1/Attributes#type)
                    public var criticalityType: SpanAttributeKey<CriticalityTypeEnum> {
                        .init(name: OTelAttribute.gcp.apphub.service.criticalityType)
                    }

                    public struct CriticalityTypeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                        public let rawValue: String
                        public init(rawValue: String) {
                            self.rawValue = rawValue
                        }
                        public func toSpanAttribute() -> Tracing.SpanAttribute {
                            .string(self.rawValue)
                        }
                    }

                    /// `gcp.apphub.service.environment_type` **UNSTABLE**: Environment of a service is the stage of a software lifecycle.
                    ///
                    /// - Stability: development
                    /// - Type: enum
                    ///     - `PRODUCTION`: Production environment.
                    ///     - `STAGING`: Staging environment.
                    ///     - `TEST`: Test environment.
                    ///     - `DEVELOPMENT`: Development environment.
                    ///
                    /// [See AppHub environment type](https://cloud.google.com/app-hub/docs/reference/rest/v1/Attributes#type_1)
                    public var environmentType: SpanAttributeKey<EnvironmentTypeEnum> {
                        .init(name: OTelAttribute.gcp.apphub.service.environmentType)
                    }

                    public struct EnvironmentTypeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                        public let rawValue: String
                        public init(rawValue: String) {
                            self.rawValue = rawValue
                        }
                        public func toSpanAttribute() -> Tracing.SpanAttribute {
                            .string(self.rawValue)
                        }
                    }

                    /// `gcp.apphub.service.id` **UNSTABLE**: The name of the service as configured in AppHub.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `my-service`
                    public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.gcp.apphub.service.id) }
                }
            }

            /// `gcp.apphub.workload` namespace
            public var workload: WorkloadAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct WorkloadAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `gcp.apphub.workload.criticality_type` **UNSTABLE**: Criticality of a workload indicates its importance to the business.
                    ///
                    /// - Stability: development
                    /// - Type: enum
                    ///     - `MISSION_CRITICAL`: Mission critical service.
                    ///     - `HIGH`: High impact.
                    ///     - `MEDIUM`: Medium impact.
                    ///     - `LOW`: Low impact.
                    ///
                    /// [See AppHub type enum](https://cloud.google.com/app-hub/docs/reference/rest/v1/Attributes#type)
                    public var criticalityType: SpanAttributeKey<CriticalityTypeEnum> {
                        .init(name: OTelAttribute.gcp.apphub.workload.criticalityType)
                    }

                    public struct CriticalityTypeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                        public let rawValue: String
                        public init(rawValue: String) {
                            self.rawValue = rawValue
                        }
                        public func toSpanAttribute() -> Tracing.SpanAttribute {
                            .string(self.rawValue)
                        }
                    }

                    /// `gcp.apphub.workload.environment_type` **UNSTABLE**: Environment of a workload is the stage of a software lifecycle.
                    ///
                    /// - Stability: development
                    /// - Type: enum
                    ///     - `PRODUCTION`: Production environment.
                    ///     - `STAGING`: Staging environment.
                    ///     - `TEST`: Test environment.
                    ///     - `DEVELOPMENT`: Development environment.
                    ///
                    /// [See AppHub environment type](https://cloud.google.com/app-hub/docs/reference/rest/v1/Attributes#type_1)
                    public var environmentType: SpanAttributeKey<EnvironmentTypeEnum> {
                        .init(name: OTelAttribute.gcp.apphub.workload.environmentType)
                    }

                    public struct EnvironmentTypeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                        public let rawValue: String
                        public init(rawValue: String) {
                            self.rawValue = rawValue
                        }
                        public func toSpanAttribute() -> Tracing.SpanAttribute {
                            .string(self.rawValue)
                        }
                    }

                    /// `gcp.apphub.workload.id` **UNSTABLE**: The name of the workload as configured in AppHub.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `my-workload`
                    public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.gcp.apphub.workload.id) }
                }
            }
        }

        /// `gcp.client` namespace
        public var client: ClientAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ClientAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `gcp.client.service` **UNSTABLE**: Identifies the Google Cloud service for which the official client library is intended.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `appengine`
                ///     - `run`
                ///     - `firestore`
                ///     - `alloydb`
                ///     - `spanner`
                ///
                /// Intended to be a stable identifier for Google Cloud client libraries that is uniform across implementation languages. The value should be derived from the canonical service domain for the service; for example, 'foo.googleapis.com' should result in a value of 'foo'.
                public var service: SpanAttributeKey<String> { .init(name: OTelAttribute.gcp.client.service) }
            }
        }

        /// `gcp.cloud_run` namespace
        public var cloudRun: CloudRunAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct CloudRunAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
            }

            /// `gcp.cloud_run.job` namespace
            public var job: JobAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct JobAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `gcp.cloud_run.job.execution` **UNSTABLE**: The name of the Cloud Run [execution](https://cloud.google.com/run/docs/managing/job-executions) being run for the Job, as set by the [`CLOUD_RUN_EXECUTION`](https://cloud.google.com/run/docs/container-contract#jobs-env-vars) environment variable.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Examples:
                    ///     - `job-name-xxxx`
                    ///     - `sample-job-mdw84`
                    public var execution: SpanAttributeKey<String> {
                        .init(name: OTelAttribute.gcp.cloudRun.job.execution)
                    }

                    /// `gcp.cloud_run.job.task_index` **UNSTABLE**: The index for a task within an execution as provided by the [`CLOUD_RUN_TASK_INDEX`](https://cloud.google.com/run/docs/container-contract#jobs-env-vars) environment variable.
                    ///
                    /// - Stability: development
                    /// - Type: int
                    /// - Examples:
                    ///     - `0`
                    ///     - `1`
                    public var taskIndex: SpanAttributeKey<Int> {
                        .init(name: OTelAttribute.gcp.cloudRun.job.taskIndex)
                    }
                }
            }
        }

        /// `gcp.gce` namespace
        public var gce: GceAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct GceAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
            }

            /// `gcp.gce.instance` namespace
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

                    /// `gcp.gce.instance.hostname` **UNSTABLE**: The hostname of a GCE instance. This is the full value of the default or [custom hostname](https://cloud.google.com/compute/docs/instances/custom-hostname-vm).
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Examples:
                    ///     - `my-host1234.example.com`
                    ///     - `sample-vm.us-west1-b.c.my-project.internal`
                    public var hostname: SpanAttributeKey<String> {
                        .init(name: OTelAttribute.gcp.gce.instance.hostname)
                    }

                    /// `gcp.gce.instance.name` **UNSTABLE**: The instance name of a GCE instance. This is the value provided by `host.name`, the visible name of the instance in the Cloud Console UI, and the prefix for the default hostname of the instance as defined by the [default internal DNS name](https://cloud.google.com/compute/docs/internal-dns#instance-fully-qualified-domain-names).
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Examples:
                    ///     - `instance-1`
                    ///     - `my-vm-name`
                    public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.gcp.gce.instance.name) }
                }
            }
        }
    }
    #endif
}

#endif
