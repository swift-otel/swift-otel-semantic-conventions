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
    /// `k8s` namespace
    public var k8s: K8sAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct K8sAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
        }

        /// `k8s.cluster` namespace
        public var cluster: ClusterAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ClusterAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `k8s.cluster.name`: The name of the cluster.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Example: `opentelemetry-cluster`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.cluster.name) }

                /// `k8s.cluster.uid`: A pseudo-ID for the cluster, set to the UID of the `kube-system` namespace.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Example: `218fc5a9-a5f1-4b54-aa05-46717d0ab26d`
                ///
                /// K8s doesn't have support for obtaining a cluster ID. If this is ever
                /// added, we will recommend collecting the `k8s.cluster.uid` through the
                /// official APIs. In the meantime, we are able to use the `uid` of the
                /// `kube-system` namespace as a proxy for cluster ID. Read on for the
                /// rationale.
                ///
                /// Every object created in a K8s cluster is assigned a distinct UID. The
                /// `kube-system` namespace is used by Kubernetes itself and will exist
                /// for the lifetime of the cluster. Using the `uid` of the `kube-system`
                /// namespace is a reasonable proxy for the K8s ClusterID as it will only
                /// change if the cluster is rebuilt. Furthermore, Kubernetes UIDs are
                /// UUIDs as standardized by
                /// [ISO/IEC 9834-8 and ITU-T X.667](https://www.itu.int/ITU-T/studygroups/com17/oid.html).
                /// Which states:
                ///
                /// > If generated according to one of the mechanisms defined in Rec.
                /// > ITU-T X.667 | ISO/IEC 9834-8, a UUID is either guaranteed to be
                /// > different from all other UUIDs generated before 3603 A.D., or is
                /// > extremely likely to be different (depending on the mechanism chosen).
                ///
                /// Therefore, UIDs between clusters should be extremely unlikely to
                /// conflict.
                public var uid: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.cluster.uid) }
            }
        }

        /// `k8s.container` namespace
        public var container: ContainerAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ContainerAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `k8s.container.name`: The name of the Container from Pod specification, must be unique within a Pod. Container runtime usually uses different globally unique name (`container.name`).
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Example: `redis`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.container.name) }

                /// `k8s.container.restart_count`: Number of times the container was restarted. This attribute can be used to identify a particular container (running or stopped) within a container spec.
                ///
                /// - Stability: stable
                /// - Type: int
                public var restartCount: SpanAttributeKey<Int> { .init(name: OTelAttribute.k8s.container.restartCount) }
            }

            #if Experimental
            /// `k8s.container.ephemeral_storage` namespace
            public var ephemeralStorage: EphemeralStorageAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct EphemeralStorageAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `k8s.container.ephemeral_storage.fs_type` **UNSTABLE**: The type of file system component for ephemeral storage.
                    ///
                    /// - Stability: development
                    /// - Type: enum
                    ///     - `rootfs`: For the container's writable layer usage.
                    ///     - `logs`: For the container's log files usage (stdout/stderr).
                    /// - Examples:
                    ///     - `rootfs`
                    ///     - `logs`
                    ///
                    /// Eviction decisions based on ephemeral-storage resource limits are made based on the total container usage.
                    public var fsType: SpanAttributeKey<FsTypeEnum> {
                        .init(name: OTelAttribute.k8s.container.ephemeralStorage.fsType)
                    }

                    public struct FsTypeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
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
            #endif

            #if Experimental
            /// `k8s.container.status` namespace
            public var status: StatusAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct StatusAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `k8s.container.status.last_terminated_reason` **UNSTABLE**: Last terminated reason of the Container.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Examples:
                    ///     - `Evicted`
                    ///     - `Error`
                    public var lastTerminatedReason: SpanAttributeKey<String> {
                        .init(name: OTelAttribute.k8s.container.status.lastTerminatedReason)
                    }

                    /// `k8s.container.status.reason` **UNSTABLE**: The reason for the container state. Corresponds to the `reason` field of the: [K8s ContainerStateWaiting](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.34/#containerstatewaiting-v1-core) or [K8s ContainerStateTerminated](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.34/#containerstateterminated-v1-core)
                    ///
                    /// - Stability: experimental
                    /// - Type: enum
                    ///     - `ContainerCreating`: The container is being created.
                    ///     - `CrashLoopBackOff`: The container is in a crash loop back off state.
                    ///     - `CreateContainerConfigError`: There was an error creating the container configuration.
                    ///     - `ErrImagePull`: There was an error pulling the container image.
                    ///     - `ImagePullBackOff`: The container image pull is in back off state.
                    ///     - `OOMKilled`: The container was killed due to out of memory.
                    ///     - `Completed`: The container has completed execution.
                    ///     - `Error`: There was an error with the container.
                    ///     - `ContainerCannotRun`: The container cannot run.
                    /// - Examples:
                    ///     - `ContainerCreating`
                    ///     - `CrashLoopBackOff`
                    ///     - `CreateContainerConfigError`
                    ///     - `ErrImagePull`
                    ///     - `ImagePullBackOff`
                    ///     - `OOMKilled`
                    ///     - `Completed`
                    ///     - `Error`
                    ///     - `ContainerCannotRun`
                    public var reason: SpanAttributeKey<ReasonEnum> {
                        .init(name: OTelAttribute.k8s.container.status.reason)
                    }

                    public struct ReasonEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                        public let rawValue: String
                        public init(rawValue: String) {
                            self.rawValue = rawValue
                        }
                        public func toSpanAttribute() -> Tracing.SpanAttribute {
                            .string(self.rawValue)
                        }
                    }

                    /// `k8s.container.status.state` **UNSTABLE**: The state of the container. [K8s ContainerState](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.34/#containerstate-v1-core)
                    ///
                    /// - Stability: experimental
                    /// - Type: enum
                    ///     - `terminated`: The container has terminated.
                    ///     - `running`: The container is running.
                    ///     - `waiting`: The container is waiting.
                    /// - Examples:
                    ///     - `terminated`
                    ///     - `running`
                    ///     - `waiting`
                    public var state: SpanAttributeKey<StateEnum> {
                        .init(name: OTelAttribute.k8s.container.status.state)
                    }

                    public struct StateEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
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
            #endif
        }

        /// `k8s.cronjob` namespace
        public var cronjob: CronjobAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct CronjobAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            /// `k8s.cronjob.annotation`: The cronjob annotation placed on the CronJob, the `<key>` being the annotation name, the value being the annotation value.
            ///
            /// - Stability: stable
            /// - Type: templateString
            /// - Examples:
            ///     - `4`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - An annotation `retries` with value `4` SHOULD be recorded as the
            ///   `k8s.cronjob.annotation.retries` attribute with value `"4"`.
            /// - An annotation `data` with empty string value SHOULD be recorded as
            ///   the `k8s.cronjob.annotation.data` attribute with value `""`.
            public var annotation: AnnotationAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct AnnotationAttributes {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: String) {
                    let attributeID = self.attributeID(forKey: key)
                    self.attributes[attributeID] = value
                }

                private func attributeID(forKey key: String) -> String {
                    var attributeID = "k8s.cronjob.annotation."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeID.append("_")
                        } else {
                            attributeID.append(character.lowercased())
                        }
                    }

                    return attributeID
                }
            }

            /// `k8s.cronjob.label`: The label placed on the CronJob, the `<key>` being the label name, the value being the label value.
            ///
            /// - Stability: stable
            /// - Type: templateString
            /// - Examples:
            ///     - `weekly`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - A label `type` with value `weekly` SHOULD be recorded as the
            ///   `k8s.cronjob.label.type` attribute with value `"weekly"`.
            /// - A label `automated` with empty string value SHOULD be recorded as
            ///   the `k8s.cronjob.label.automated` attribute with value `""`.
            public var label: LabelAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct LabelAttributes {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: String) {
                    let attributeID = self.attributeID(forKey: key)
                    self.attributes[attributeID] = value
                }

                private func attributeID(forKey key: String) -> String {
                    var attributeID = "k8s.cronjob.label."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeID.append("_")
                        } else {
                            attributeID.append(character.lowercased())
                        }
                    }

                    return attributeID
                }
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `k8s.cronjob.name`: The name of the CronJob.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Example: `opentelemetry`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.cronjob.name) }

                /// `k8s.cronjob.uid`: The UID of the CronJob.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
                public var uid: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.cronjob.uid) }
            }
        }

        /// `k8s.daemonset` namespace
        public var daemonset: DaemonsetAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct DaemonsetAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            /// `k8s.daemonset.annotation`: The annotation placed on the DaemonSet, the `<key>` being the annotation name, the value being the annotation value, even if the value is empty.
            ///
            /// - Stability: stable
            /// - Type: templateString
            /// - Examples:
            ///     - `1`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - An annotation `replicas` with value `1` SHOULD be recorded
            ///   as the `k8s.daemonset.annotation.replicas` attribute with value `"1"`.
            /// - An annotation `data` with empty string value SHOULD be recorded as
            ///   the `k8s.daemonset.annotation.data` attribute with value `""`.
            public var annotation: AnnotationAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct AnnotationAttributes {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: String) {
                    let attributeID = self.attributeID(forKey: key)
                    self.attributes[attributeID] = value
                }

                private func attributeID(forKey key: String) -> String {
                    var attributeID = "k8s.daemonset.annotation."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeID.append("_")
                        } else {
                            attributeID.append(character.lowercased())
                        }
                    }

                    return attributeID
                }
            }

            /// `k8s.daemonset.label`: The label placed on the DaemonSet, the `<key>` being the label name, the value being the label value, even if the value is empty.
            ///
            /// - Stability: stable
            /// - Type: templateString
            /// - Examples:
            ///     - `guestbook`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - A label `app` with value `guestbook` SHOULD be recorded
            ///   as the `k8s.daemonset.label.app` attribute with value `"guestbook"`.
            /// - A label `injected` with empty string value SHOULD be recorded as
            ///   the `k8s.daemonset.label.injected` attribute with value `""`.
            public var label: LabelAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct LabelAttributes {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: String) {
                    let attributeID = self.attributeID(forKey: key)
                    self.attributes[attributeID] = value
                }

                private func attributeID(forKey key: String) -> String {
                    var attributeID = "k8s.daemonset.label."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeID.append("_")
                        } else {
                            attributeID.append(character.lowercased())
                        }
                    }

                    return attributeID
                }
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `k8s.daemonset.name`: The name of the DaemonSet.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Example: `opentelemetry`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.daemonset.name) }

                /// `k8s.daemonset.uid`: The UID of the DaemonSet.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
                public var uid: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.daemonset.uid) }
            }
        }

        /// `k8s.deployment` namespace
        public var deployment: DeploymentAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct DeploymentAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            /// `k8s.deployment.annotation`: The annotation placed on the Deployment, the `<key>` being the annotation name, the value being the annotation value, even if the value is empty.
            ///
            /// - Stability: stable
            /// - Type: templateString
            /// - Examples:
            ///     - `1`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - An annotation `replicas` with value `1` SHOULD be recorded
            ///   as the `k8s.deployment.annotation.replicas` attribute with value `"1"`.
            /// - An annotation `data` with empty string value SHOULD be recorded as
            ///   the `k8s.deployment.annotation.data` attribute with value `""`.
            public var annotation: AnnotationAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct AnnotationAttributes {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: String) {
                    let attributeID = self.attributeID(forKey: key)
                    self.attributes[attributeID] = value
                }

                private func attributeID(forKey key: String) -> String {
                    var attributeID = "k8s.deployment.annotation."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeID.append("_")
                        } else {
                            attributeID.append(character.lowercased())
                        }
                    }

                    return attributeID
                }
            }

            /// `k8s.deployment.label`: The label placed on the Deployment, the `<key>` being the label name, the value being the label value, even if the value is empty.
            ///
            /// - Stability: stable
            /// - Type: templateString
            /// - Examples:
            ///     - `guestbook`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - A label `app` with value `guestbook` SHOULD be recorded
            ///   as the `k8s.deployment.label.app` attribute with value `"guestbook"`.
            /// - A label `injected` with empty string value SHOULD be recorded as
            ///   the `k8s.deployment.label.injected` attribute with value `""`.
            public var label: LabelAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct LabelAttributes {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: String) {
                    let attributeID = self.attributeID(forKey: key)
                    self.attributes[attributeID] = value
                }

                private func attributeID(forKey key: String) -> String {
                    var attributeID = "k8s.deployment.label."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeID.append("_")
                        } else {
                            attributeID.append(character.lowercased())
                        }
                    }

                    return attributeID
                }
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `k8s.deployment.name`: The name of the Deployment.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Example: `opentelemetry`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.deployment.name) }

                /// `k8s.deployment.uid`: The UID of the Deployment.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
                public var uid: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.deployment.uid) }
            }
        }

        #if Experimental
        /// `k8s.hpa` namespace
        public var hpa: HpaAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct HpaAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `k8s.hpa.name` **UNSTABLE**: The name of the horizontal pod autoscaler.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `opentelemetry`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.hpa.name) }

                /// `k8s.hpa.uid` **UNSTABLE**: The UID of the horizontal pod autoscaler.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
                public var uid: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.hpa.uid) }
            }

            /// `k8s.hpa.metric` namespace
            public var metric: MetricAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct MetricAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `k8s.hpa.metric.type` **UNSTABLE**: The type of metric source for the horizontal pod autoscaler.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Examples:
                    ///     - `Resource`
                    ///     - `ContainerResource`
                    ///
                    /// This attribute reflects the `type` field of spec.metrics[] in the HPA.
                    public var `type`: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.hpa.metric.`type`) }
                }
            }

            /// `k8s.hpa.scaletargetref` namespace
            public var scaletargetref: ScaletargetrefAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct ScaletargetrefAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `k8s.hpa.scaletargetref.api_version` **UNSTABLE**: The API version of the target resource to scale for the HorizontalPodAutoscaler.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Examples:
                    ///     - `apps/v1`
                    ///     - `autoscaling/v2`
                    ///
                    /// This maps to the `apiVersion` field in the `scaleTargetRef` of the HPA spec.
                    public var apiVersion: SpanAttributeKey<String> {
                        .init(name: OTelAttribute.k8s.hpa.scaletargetref.apiVersion)
                    }

                    /// `k8s.hpa.scaletargetref.kind` **UNSTABLE**: The kind of the target resource to scale for the HorizontalPodAutoscaler.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Examples:
                    ///     - `Deployment`
                    ///     - `StatefulSet`
                    ///
                    /// This maps to the `kind` field in the `scaleTargetRef` of the HPA spec.
                    public var kind: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.hpa.scaletargetref.kind) }

                    /// `k8s.hpa.scaletargetref.name` **UNSTABLE**: The name of the target resource to scale for the HorizontalPodAutoscaler.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Examples:
                    ///     - `my-deployment`
                    ///     - `my-statefulset`
                    ///
                    /// This maps to the `name` field in the `scaleTargetRef` of the HPA spec.
                    public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.hpa.scaletargetref.name) }
                }
            }
        }
        #endif

        #if Experimental
        /// `k8s.hugepage` namespace
        public var hugepage: HugepageAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct HugepageAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `k8s.hugepage.size` **UNSTABLE**: The size (identifier) of the K8s huge page.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `2Mi`
                public var size: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.hugepage.size) }
            }
        }
        #endif

        /// `k8s.job` namespace
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

            /// `k8s.job.annotation`: The annotation placed on the Job, the `<key>` being the annotation name, the value being the annotation value, even if the value is empty.
            ///
            /// - Stability: stable
            /// - Type: templateString
            /// - Examples:
            ///     - `1`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - An annotation `number` with value `1` SHOULD be recorded
            ///   as the `k8s.job.annotation.number` attribute with value `"1"`.
            /// - An annotation `data` with empty string value SHOULD be recorded as
            ///   the `k8s.job.annotation.data` attribute with value `""`.
            public var annotation: AnnotationAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct AnnotationAttributes {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: String) {
                    let attributeID = self.attributeID(forKey: key)
                    self.attributes[attributeID] = value
                }

                private func attributeID(forKey key: String) -> String {
                    var attributeID = "k8s.job.annotation."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeID.append("_")
                        } else {
                            attributeID.append(character.lowercased())
                        }
                    }

                    return attributeID
                }
            }

            /// `k8s.job.label`: The label placed on the Job, the `<key>` being the label name, the value being the label value, even if the value is empty.
            ///
            /// - Stability: stable
            /// - Type: templateString
            /// - Examples:
            ///     - `ci`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - A label `jobtype` with value `ci` SHOULD be recorded
            ///   as the `k8s.job.label.jobtype` attribute with value `"ci"`.
            /// - A label `automated` with empty string value SHOULD be recorded as
            ///   the `k8s.job.label.automated` attribute with value `""`.
            public var label: LabelAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct LabelAttributes {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: String) {
                    let attributeID = self.attributeID(forKey: key)
                    self.attributes[attributeID] = value
                }

                private func attributeID(forKey key: String) -> String {
                    var attributeID = "k8s.job.label."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeID.append("_")
                        } else {
                            attributeID.append(character.lowercased())
                        }
                    }

                    return attributeID
                }
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `k8s.job.name`: The name of the Job.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Example: `opentelemetry`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.job.name) }

                /// `k8s.job.uid`: The UID of the Job.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
                public var uid: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.job.uid) }
            }
        }

        /// `k8s.namespace` namespace
        public var namespace: NamespaceAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct NamespaceAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            /// `k8s.namespace.annotation`: The annotation placed on the Namespace, the `<key>` being the annotation name, the value being the annotation value, even if the value is empty.
            ///
            /// - Stability: stable
            /// - Type: templateString
            /// - Examples:
            ///     - `0`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - An annotation `ttl` with value `0` SHOULD be recorded
            ///   as the `k8s.namespace.annotation.ttl` attribute with value `"0"`.
            /// - An annotation `data` with empty string value SHOULD be recorded as
            ///   the `k8s.namespace.annotation.data` attribute with value `""`.
            public var annotation: AnnotationAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct AnnotationAttributes {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: String) {
                    let attributeID = self.attributeID(forKey: key)
                    self.attributes[attributeID] = value
                }

                private func attributeID(forKey key: String) -> String {
                    var attributeID = "k8s.namespace.annotation."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeID.append("_")
                        } else {
                            attributeID.append(character.lowercased())
                        }
                    }

                    return attributeID
                }
            }

            /// `k8s.namespace.label`: The label placed on the Namespace, the `<key>` being the label name, the value being the label value, even if the value is empty.
            ///
            /// - Stability: stable
            /// - Type: templateString
            /// - Examples:
            ///     - `default`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - A label `kubernetes.io/metadata.name` with value `default` SHOULD be recorded
            ///   as the `k8s.namespace.label.kubernetes.io/metadata.name` attribute with value `"default"`.
            /// - A label `data` with empty string value SHOULD be recorded as
            ///   the `k8s.namespace.label.data` attribute with value `""`.
            public var label: LabelAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct LabelAttributes {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: String) {
                    let attributeID = self.attributeID(forKey: key)
                    self.attributes[attributeID] = value
                }

                private func attributeID(forKey key: String) -> String {
                    var attributeID = "k8s.namespace.label."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeID.append("_")
                        } else {
                            attributeID.append(character.lowercased())
                        }
                    }

                    return attributeID
                }
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `k8s.namespace.name`: The name of the namespace that the pod is running in.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Example: `default`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.namespace.name) }

                #if Experimental
                /// `k8s.namespace.phase` **UNSTABLE**: The phase of the K8s namespace.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `active`: Active namespace phase as described by [K8s API](https://pkg.go.dev/k8s.io/api@v0.31.3/core/v1#NamespacePhase)
                ///     - `terminating`: Terminating namespace phase as described by [K8s API](https://pkg.go.dev/k8s.io/api@v0.31.3/core/v1#NamespacePhase)
                /// - Examples:
                ///     - `active`
                ///     - `terminating`
                ///
                /// This attribute aligns with the `phase` field of the
                /// [K8s NamespaceStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.34/#namespacestatus-v1-core)
                public var phase: SpanAttributeKey<PhaseEnum> { .init(name: OTelAttribute.k8s.namespace.phase) }

                public struct PhaseEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                    public let rawValue: String
                    public init(rawValue: String) {
                        self.rawValue = rawValue
                    }
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
                    }
                }
                #endif
            }
        }

        /// `k8s.node` namespace
        public var node: NodeAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct NodeAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            /// `k8s.node.annotation`: The annotation placed on the Node, the `<key>` being the annotation name, the value being the annotation value, even if the value is empty.
            ///
            /// - Stability: stable
            /// - Type: templateString
            /// - Examples:
            ///     - `0`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - An annotation `node.alpha.kubernetes.io/ttl` with value `0` SHOULD be recorded as
            ///   the `k8s.node.annotation.node.alpha.kubernetes.io/ttl` attribute with value `"0"`.
            /// - An annotation `data` with empty string value SHOULD be recorded as
            ///   the `k8s.node.annotation.data` attribute with value `""`.
            public var annotation: AnnotationAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct AnnotationAttributes {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: String) {
                    let attributeID = self.attributeID(forKey: key)
                    self.attributes[attributeID] = value
                }

                private func attributeID(forKey key: String) -> String {
                    var attributeID = "k8s.node.annotation."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeID.append("_")
                        } else {
                            attributeID.append(character.lowercased())
                        }
                    }

                    return attributeID
                }
            }

            /// `k8s.node.label`: The label placed on the Node, the `<key>` being the label name, the value being the label value, even if the value is empty.
            ///
            /// - Stability: stable
            /// - Type: templateString
            /// - Examples:
            ///     - `arm64`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - A label `kubernetes.io/arch` with value `arm64` SHOULD be recorded
            ///   as the `k8s.node.label.kubernetes.io/arch` attribute with value `"arm64"`.
            /// - A label `data` with empty string value SHOULD be recorded as
            ///   the `k8s.node.label.data` attribute with value `""`.
            public var label: LabelAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct LabelAttributes {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: String) {
                    let attributeID = self.attributeID(forKey: key)
                    self.attributes[attributeID] = value
                }

                private func attributeID(forKey key: String) -> String {
                    var attributeID = "k8s.node.label."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeID.append("_")
                        } else {
                            attributeID.append(character.lowercased())
                        }
                    }

                    return attributeID
                }
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `k8s.node.name`: The name of the Node.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Example: `node-1`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.node.name) }

                /// `k8s.node.uid`: The UID of the Node.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Example: `1eb3a0c6-0477-4080-a9cb-0cb7db65c6a2`
                public var uid: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.node.uid) }
            }

            #if Experimental
            /// `k8s.node.condition` namespace
            public var condition: ConditionAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct ConditionAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `k8s.node.condition.status` **UNSTABLE**: The status of the condition, one of True, False, Unknown.
                    ///
                    /// - Stability: development
                    /// - Type: enum
                    ///     - `true`
                    ///     - `false`
                    ///     - `unknown`
                    /// - Examples:
                    ///     - `true`
                    ///     - `false`
                    ///     - `unknown`
                    ///
                    /// This attribute aligns with the `status` field of the
                    /// [NodeCondition](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.34/#nodecondition-v1-core)
                    public var status: SpanAttributeKey<StatusEnum> {
                        .init(name: OTelAttribute.k8s.node.condition.status)
                    }

                    public struct StatusEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                        public let rawValue: String
                        public init(rawValue: String) {
                            self.rawValue = rawValue
                        }
                        public func toSpanAttribute() -> Tracing.SpanAttribute {
                            .string(self.rawValue)
                        }
                    }

                    /// `k8s.node.condition.type` **UNSTABLE**: The condition type of a K8s Node.
                    ///
                    /// - Stability: development
                    /// - Type: enum
                    ///     - `Ready`: The node is healthy and ready to accept pods
                    ///     - `DiskPressure`: Pressure exists on the disk size—that is, if the disk capacity is low
                    ///     - `MemoryPressure`: Pressure exists on the node memory—that is, if the node memory is low
                    ///     - `PIDPressure`: Pressure exists on the processes—that is, if there are too many processes on the node
                    ///     - `NetworkUnavailable`: The network for the node is not correctly configured
                    /// - Examples:
                    ///     - `Ready`
                    ///     - `DiskPressure`
                    ///
                    /// K8s Node conditions as described
                    /// by [K8s documentation](https://kubernetes.io/docs/reference/node/node-status/#condition).
                    ///
                    /// This attribute aligns with the `type` field of the
                    /// [NodeCondition](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.34/#nodecondition-v1-core)
                    ///
                    /// The set of possible values is not limited to those listed here. Managed Kubernetes environments,
                    /// or custom controllers MAY introduce additional node condition types.
                    /// When this occurs, the exact value as reported by the Kubernetes API SHOULD be used.
                    public var `type`: SpanAttributeKey<TypeEnum> {
                        .init(name: OTelAttribute.k8s.node.condition.`type`)
                    }

                    public struct TypeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
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
            #endif

            #if Experimental
            /// `k8s.node.system_container` namespace
            public var systemContainer: SystemContainerAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct SystemContainerAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `k8s.node.system_container.name` **UNSTABLE**: The name of the system container running on the K8s Node.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Examples:
                    ///     - `kubelet`
                    ///     - `runtime`
                    ///     - `pods`
                    ///     - `misc`
                    public var name: SpanAttributeKey<String> {
                        .init(name: OTelAttribute.k8s.node.systemContainer.name)
                    }
                }
            }
            #endif
        }

        #if Experimental
        /// `k8s.persistentvolume` namespace
        public var persistentvolume: PersistentvolumeAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct PersistentvolumeAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            /// `k8s.persistentvolume.annotation` **UNSTABLE**: The annotation placed on the PersistentVolume, the `<key>` being the annotation name, the value being the annotation value, even if the value is empty.
            ///
            /// - Stability: development
            /// - Type: templateString
            /// - Examples:
            ///     - `kubernetes.io/aws-ebs`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - An annotation `pv.kubernetes.io/provisioned-by` with value `kubernetes.io/aws-ebs` SHOULD be recorded as
            ///   the `k8s.persistentvolume.annotation.pv.kubernetes.io/provisioned-by` attribute with value `"kubernetes.io/aws-ebs"`.
            /// - An annotation `data` with empty string value SHOULD be recorded as
            ///   the `k8s.persistentvolume.annotation.data` attribute with value `""`.
            public var annotation: AnnotationAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct AnnotationAttributes {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: String) {
                    let attributeID = self.attributeID(forKey: key)
                    self.attributes[attributeID] = value
                }

                private func attributeID(forKey key: String) -> String {
                    var attributeID = "k8s.persistentvolume.annotation."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeID.append("_")
                        } else {
                            attributeID.append(character.lowercased())
                        }
                    }

                    return attributeID
                }
            }

            /// `k8s.persistentvolume.label` **UNSTABLE**: The label placed on the PersistentVolume, the `<key>` being the label name, the value being the label value, even if the value is empty.
            ///
            /// - Stability: development
            /// - Type: templateString
            /// - Examples:
            ///     - `ssd`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - A label `type` with value `ssd` SHOULD be recorded as
            ///   the `k8s.persistentvolume.label.type` attribute with value `"ssd"`.
            /// - A label `data` with empty string value SHOULD be recorded as
            ///   the `k8s.persistentvolume.label.data` attribute with value `""`.
            public var label: LabelAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct LabelAttributes {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: String) {
                    let attributeID = self.attributeID(forKey: key)
                    self.attributes[attributeID] = value
                }

                private func attributeID(forKey key: String) -> String {
                    var attributeID = "k8s.persistentvolume.label."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeID.append("_")
                        } else {
                            attributeID.append(character.lowercased())
                        }
                    }

                    return attributeID
                }
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `k8s.persistentvolume.name` **UNSTABLE**: The name of the PersistentVolume.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `pv-data-01`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.persistentvolume.name) }

                /// `k8s.persistentvolume.reclaim_policy` **UNSTABLE**: The reclaim policy of the PersistentVolume.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `Delete`: The volume will be deleted when released from its claim.
                ///     - `Recycle`: The volume will be recycled (basic scrub) when released from its claim.
                ///     - `Retain`: The volume will be retained when released from its claim.
                /// - Examples:
                ///     - `Delete`
                ///     - `Retain`
                ///     - `Recycle`
                ///
                /// This attribute aligns with the `persistentVolumeReclaimPolicy` field of the
                /// [K8s PersistentVolumeSpec](https://kubernetes.io/docs/reference/kubernetes-api/config-and-storage-resources/persistent-volume-v1/#PersistentVolumeSpec).
                public var reclaimPolicy: SpanAttributeKey<ReclaimPolicyEnum> {
                    .init(name: OTelAttribute.k8s.persistentvolume.reclaimPolicy)
                }

                public struct ReclaimPolicyEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                    public let rawValue: String
                    public init(rawValue: String) {
                        self.rawValue = rawValue
                    }
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
                    }
                }

                /// `k8s.persistentvolume.uid` **UNSTABLE**: The UID of the PersistentVolume.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
                public var uid: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.persistentvolume.uid) }
            }

            /// `k8s.persistentvolume.status` namespace
            public var status: StatusAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct StatusAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `k8s.persistentvolume.status.phase` **UNSTABLE**: The phase of the PersistentVolume.
                    ///
                    /// - Stability: development
                    /// - Type: enum
                    ///     - `Available`: The volume is available and not yet bound to a claim.
                    ///     - `Bound`: The volume is bound to a claim.
                    ///     - `Failed`: The volume has failed its automatic reclamation.
                    ///     - `Pending`: The volume is being provisioned.
                    ///     - `Released`: The claim has been deleted but the volume is not yet available.
                    /// - Examples:
                    ///     - `Pending`
                    ///     - `Available`
                    ///     - `Bound`
                    ///     - `Released`
                    ///     - `Failed`
                    ///
                    /// This attribute aligns with the `phase` field of the
                    /// [K8s PersistentVolumeStatus](https://kubernetes.io/docs/reference/kubernetes-api/config-and-storage-resources/persistent-volume-v1/#PersistentVolumeStatus).
                    public var phase: SpanAttributeKey<PhaseEnum> {
                        .init(name: OTelAttribute.k8s.persistentvolume.status.phase)
                    }

                    public struct PhaseEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
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
        }
        #endif

        #if Experimental
        /// `k8s.persistentvolumeclaim` namespace
        public var persistentvolumeclaim: PersistentvolumeclaimAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct PersistentvolumeclaimAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            /// `k8s.persistentvolumeclaim.annotation` **UNSTABLE**: The annotation placed on the PersistentVolumeClaim, the `<key>` being the annotation name, the value being the annotation value, even if the value is empty.
            ///
            /// - Stability: development
            /// - Type: templateString
            /// - Examples:
            ///     - `kubernetes.io/aws-ebs`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - An annotation `volume.beta.kubernetes.io/storage-provisioner` with value `kubernetes.io/aws-ebs` SHOULD be recorded as
            ///   the `k8s.persistentvolumeclaim.annotation.volume.beta.kubernetes.io/storage-provisioner` attribute with value `"kubernetes.io/aws-ebs"`.
            /// - An annotation `data` with empty string value SHOULD be recorded as
            ///   the `k8s.persistentvolumeclaim.annotation.data` attribute with value `""`.
            public var annotation: AnnotationAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct AnnotationAttributes {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: String) {
                    let attributeID = self.attributeID(forKey: key)
                    self.attributes[attributeID] = value
                }

                private func attributeID(forKey key: String) -> String {
                    var attributeID = "k8s.persistentvolumeclaim.annotation."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeID.append("_")
                        } else {
                            attributeID.append(character.lowercased())
                        }
                    }

                    return attributeID
                }
            }

            /// `k8s.persistentvolumeclaim.label` **UNSTABLE**: The label placed on the PersistentVolumeClaim, the `<key>` being the label name, the value being the label value, even if the value is empty.
            ///
            /// - Stability: development
            /// - Type: templateString
            /// - Examples:
            ///     - `my-app`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - A label `app` with value `my-app` SHOULD be recorded as
            ///   the `k8s.persistentvolumeclaim.label.app` attribute with value `"my-app"`.
            /// - A label `data` with empty string value SHOULD be recorded as
            ///   the `k8s.persistentvolumeclaim.label.data` attribute with value `""`.
            public var label: LabelAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct LabelAttributes {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: String) {
                    let attributeID = self.attributeID(forKey: key)
                    self.attributes[attributeID] = value
                }

                private func attributeID(forKey key: String) -> String {
                    var attributeID = "k8s.persistentvolumeclaim.label."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeID.append("_")
                        } else {
                            attributeID.append(character.lowercased())
                        }
                    }

                    return attributeID
                }
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `k8s.persistentvolumeclaim.name` **UNSTABLE**: The name of the PersistentVolumeClaim.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `pvc-data-01`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.persistentvolumeclaim.name) }

                /// `k8s.persistentvolumeclaim.uid` **UNSTABLE**: The UID of the PersistentVolumeClaim.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
                public var uid: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.persistentvolumeclaim.uid) }
            }

            /// `k8s.persistentvolumeclaim.status` namespace
            public var status: StatusAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct StatusAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `k8s.persistentvolumeclaim.status.phase` **UNSTABLE**: The phase of the PersistentVolumeClaim.
                    ///
                    /// - Stability: development
                    /// - Type: enum
                    ///     - `Bound`: The claim is bound to a volume.
                    ///     - `Lost`: The claim has lost its underlying volume (the volume does not exist anymore).
                    ///     - `Pending`: The claim has not yet been bound to a volume.
                    /// - Examples:
                    ///     - `Pending`
                    ///     - `Bound`
                    ///     - `Lost`
                    ///
                    /// This attribute aligns with the `phase` field of the
                    /// [K8s PersistentVolumeClaimStatus](https://kubernetes.io/docs/reference/kubernetes-api/config-and-storage-resources/persistent-volume-claim-v1/#PersistentVolumeClaimStatus).
                    public var phase: SpanAttributeKey<PhaseEnum> {
                        .init(name: OTelAttribute.k8s.persistentvolumeclaim.status.phase)
                    }

                    public struct PhaseEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
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
        }
        #endif

        /// `k8s.pod` namespace
        public var pod: PodAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct PodAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            /// `k8s.pod.annotation`: The annotation placed on the Pod, the `<key>` being the annotation name, the value being the annotation value.
            ///
            /// - Stability: stable
            /// - Type: templateString
            /// - Examples:
            ///     - `true`
            ///     - `x64`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - An annotation `kubernetes.io/enforce-mountable-secrets` with value `true` SHOULD be recorded as
            ///   the `k8s.pod.annotation.kubernetes.io/enforce-mountable-secrets` attribute with value `"true"`.
            /// - An annotation `mycompany.io/arch` with value `x64` SHOULD be recorded as
            ///   the `k8s.pod.annotation.mycompany.io/arch` attribute with value `"x64"`.
            /// - An annotation `data` with empty string value SHOULD be recorded as
            ///   the `k8s.pod.annotation.data` attribute with value `""`.
            public var annotation: AnnotationAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct AnnotationAttributes {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: String) {
                    let attributeID = self.attributeID(forKey: key)
                    self.attributes[attributeID] = value
                }

                private func attributeID(forKey key: String) -> String {
                    var attributeID = "k8s.pod.annotation."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeID.append("_")
                        } else {
                            attributeID.append(character.lowercased())
                        }
                    }

                    return attributeID
                }
            }

            /// `k8s.pod.label`: The label placed on the Pod, the `<key>` being the label name, the value being the label value.
            ///
            /// - Stability: stable
            /// - Type: templateString
            /// - Examples:
            ///     - `my-app`
            ///     - `x64`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - A label `app` with value `my-app` SHOULD be recorded as
            ///   the `k8s.pod.label.app` attribute with value `"my-app"`.
            /// - A label `mycompany.io/arch` with value `x64` SHOULD be recorded as
            ///   the `k8s.pod.label.mycompany.io/arch` attribute with value `"x64"`.
            /// - A label `data` with empty string value SHOULD be recorded as
            ///   the `k8s.pod.label.data` attribute with value `""`.
            public var label: LabelAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct LabelAttributes {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: String) {
                    let attributeID = self.attributeID(forKey: key)
                    self.attributes[attributeID] = value
                }

                private func attributeID(forKey key: String) -> String {
                    var attributeID = "k8s.pod.label."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeID.append("_")
                        } else {
                            attributeID.append(character.lowercased())
                        }
                    }

                    return attributeID
                }
            }

            #if Experimental
            /// `k8s.pod.labels` **UNSTABLE**: Deprecated, use `k8s.pod.label` instead.
            ///
            /// - Stability: development
            /// - Type: templateString
            /// - Example: `my-app`
            public var labels: LabelsAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct LabelsAttributes {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: String) {
                    let attributeID = self.attributeID(forKey: key)
                    self.attributes[attributeID] = value
                }

                private func attributeID(forKey key: String) -> String {
                    var attributeID = "k8s.pod.labels."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeID.append("_")
                        } else {
                            attributeID.append(character.lowercased())
                        }
                    }

                    return attributeID
                }
            }
            #endif

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `k8s.pod.hostname`: Specifies the hostname of the Pod.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Example: `collector-gateway`
                ///
                /// The K8s Pod spec has an optional hostname field, which can be used to specify a hostname.
                /// Refer to [K8s docs](https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/#pod-hostname-and-subdomain-field)
                /// for more information about this field.
                ///
                /// This attribute aligns with the `hostname` field of the
                /// [K8s PodSpec](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.34/#podspec-v1-core).
                public var hostname: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.pod.hostname) }

                /// `k8s.pod.ip`: IP address allocated to the Pod.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Example: `172.18.0.2`
                ///
                /// This attribute aligns with the `podIP` field of the
                /// [K8s PodStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.34/#podstatus-v1-core).
                public var ip: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.pod.ip) }

                /// `k8s.pod.name`: The name of the Pod.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Example: `opentelemetry-pod-autoconf`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.pod.name) }

                /// `k8s.pod.start_time`: The start timestamp of the Pod.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Example: `2025-12-04T08:41:03Z`
                ///
                /// Date and time at which the object was acknowledged by the Kubelet.
                /// This is before the Kubelet pulled the container image(s) for the pod.
                ///
                /// This attribute aligns with the `startTime` field of the
                /// [K8s PodStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.34/#podstatus-v1-core),
                /// in ISO 8601 (RFC 3339 compatible) format.
                public var startTime: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.pod.startTime) }

                /// `k8s.pod.uid`: The UID of the Pod.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
                public var uid: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.pod.uid) }
            }

            #if Experimental
            /// `k8s.pod.status` namespace
            public var status: StatusAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct StatusAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `k8s.pod.status.phase` **UNSTABLE**: The phase for the pod. Corresponds to the `phase` field of the: [K8s PodStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.33/#podstatus-v1-core)
                    ///
                    /// - Stability: development
                    /// - Type: enum
                    ///     - `Pending`: The pod has been accepted by the system, but one or more of the containers has not been started. This includes time before being bound to a node, as well as time spent pulling images onto the host.
                    ///     - `Running`: The pod has been bound to a node and all of the containers have been started. At least one container is still running or is in the process of being restarted.
                    ///     - `Succeeded`: All containers in the pod have voluntarily terminated with a container exit code of 0, and the system is not going to restart any of these containers.
                    ///     - `Failed`: All containers in the pod have terminated, and at least one container has terminated in a failure (exited with a non-zero exit code or was stopped by the system).
                    ///     - `Unknown`: For some reason the state of the pod could not be obtained, typically due to an error in communicating with the host of the pod.
                    /// - Examples:
                    ///     - `Pending`
                    ///     - `Running`
                    public var phase: SpanAttributeKey<PhaseEnum> { .init(name: OTelAttribute.k8s.pod.status.phase) }

                    public struct PhaseEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                        public let rawValue: String
                        public init(rawValue: String) {
                            self.rawValue = rawValue
                        }
                        public func toSpanAttribute() -> Tracing.SpanAttribute {
                            .string(self.rawValue)
                        }
                    }

                    /// `k8s.pod.status.reason` **UNSTABLE**: The reason for the pod state. Corresponds to the `reason` field of the: [K8s PodStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.33/#podstatus-v1-core)
                    ///
                    /// - Stability: development
                    /// - Type: enum
                    ///     - `Evicted`: The pod is evicted.
                    ///     - `NodeAffinity`: The pod is in a status because of its node affinity
                    ///     - `NodeLost`: The reason on a pod when its state cannot be confirmed as kubelet is unresponsive on the node it is (was) running.
                    ///     - `Shutdown`: The node is shutdown
                    ///     - `UnexpectedAdmissionError`: The pod was rejected admission to the node because of an error during admission that could not be categorized.
                    /// - Examples:
                    ///     - `Evicted`
                    ///     - `NodeAffinity`
                    public var reason: SpanAttributeKey<ReasonEnum> { .init(name: OTelAttribute.k8s.pod.status.reason) }

                    public struct ReasonEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
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
            #endif
        }

        /// `k8s.replicaset` namespace
        public var replicaset: ReplicasetAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ReplicasetAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            /// `k8s.replicaset.annotation`: The annotation placed on the ReplicaSet, the `<key>` being the annotation name, the value being the annotation value, even if the value is empty.
            ///
            /// - Stability: stable
            /// - Type: templateString
            /// - Examples:
            ///     - `0`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - An annotation `replicas` with value `0` SHOULD be recorded
            ///   as the `k8s.replicaset.annotation.replicas` attribute with value `"0"`.
            /// - An annotation `data` with empty string value SHOULD be recorded as
            ///   the `k8s.replicaset.annotation.data` attribute with value `""`.
            public var annotation: AnnotationAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct AnnotationAttributes {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: String) {
                    let attributeID = self.attributeID(forKey: key)
                    self.attributes[attributeID] = value
                }

                private func attributeID(forKey key: String) -> String {
                    var attributeID = "k8s.replicaset.annotation."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeID.append("_")
                        } else {
                            attributeID.append(character.lowercased())
                        }
                    }

                    return attributeID
                }
            }

            /// `k8s.replicaset.label`: The label placed on the ReplicaSet, the `<key>` being the label name, the value being the label value, even if the value is empty.
            ///
            /// - Stability: stable
            /// - Type: templateString
            /// - Examples:
            ///     - `guestbook`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - A label `app` with value `guestbook` SHOULD be recorded
            ///   as the `k8s.replicaset.label.app` attribute with value `"guestbook"`.
            /// - A label `injected` with empty string value SHOULD be recorded as
            ///   the `k8s.replicaset.label.injected` attribute with value `""`.
            public var label: LabelAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct LabelAttributes {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: String) {
                    let attributeID = self.attributeID(forKey: key)
                    self.attributes[attributeID] = value
                }

                private func attributeID(forKey key: String) -> String {
                    var attributeID = "k8s.replicaset.label."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeID.append("_")
                        } else {
                            attributeID.append(character.lowercased())
                        }
                    }

                    return attributeID
                }
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `k8s.replicaset.name`: The name of the ReplicaSet.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Example: `opentelemetry`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.replicaset.name) }

                /// `k8s.replicaset.uid`: The UID of the ReplicaSet.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
                public var uid: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.replicaset.uid) }
            }
        }

        #if Experimental
        /// `k8s.replicationcontroller` namespace
        public var replicationcontroller: ReplicationcontrollerAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ReplicationcontrollerAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `k8s.replicationcontroller.name` **UNSTABLE**: The name of the replication controller.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `opentelemetry`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.replicationcontroller.name) }

                /// `k8s.replicationcontroller.uid` **UNSTABLE**: The UID of the replication controller.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
                public var uid: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.replicationcontroller.uid) }
            }
        }
        #endif

        #if Experimental
        /// `k8s.resourcequota` namespace
        public var resourcequota: ResourcequotaAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ResourcequotaAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `k8s.resourcequota.name` **UNSTABLE**: The name of the resource quota.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `opentelemetry`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.resourcequota.name) }

                /// `k8s.resourcequota.resource_name` **UNSTABLE**: The name of the K8s resource a resource quota defines.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `count/replicationcontrollers`
                ///
                /// The value for this attribute can be either the full `count/<resource>[.<group>]` string (e.g., count/deployments.apps, count/pods), or, for certain core Kubernetes resources, just the resource name (e.g., pods, services, configmaps). Both forms are supported by Kubernetes for object count quotas. See [Kubernetes Resource Quotas documentation](https://kubernetes.io/docs/concepts/policy/resource-quotas/#quota-on-object-count) for more details.
                public var resourceName: SpanAttributeKey<String> {
                    .init(name: OTelAttribute.k8s.resourcequota.resourceName)
                }

                /// `k8s.resourcequota.uid` **UNSTABLE**: The UID of the resource quota.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
                public var uid: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.resourcequota.uid) }
            }
        }
        #endif

        #if Experimental
        /// `k8s.service` namespace
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

            /// `k8s.service.annotation` **UNSTABLE**: The annotation placed on the Service, the `<key>` being the annotation name, the value being the annotation value, even if the value is empty.
            ///
            /// - Stability: development
            /// - Type: templateString
            /// - Examples:
            ///     - `true`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - An annotation `prometheus.io/scrape` with value `true` SHOULD be recorded as
            ///   the `k8s.service.annotation.prometheus.io/scrape` attribute with value `"true"`.
            /// - An annotation `data` with empty string value SHOULD be recorded as
            ///   the `k8s.service.annotation.data` attribute with value `""`.
            public var annotation: AnnotationAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct AnnotationAttributes {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: String) {
                    let attributeID = self.attributeID(forKey: key)
                    self.attributes[attributeID] = value
                }

                private func attributeID(forKey key: String) -> String {
                    var attributeID = "k8s.service.annotation."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeID.append("_")
                        } else {
                            attributeID.append(character.lowercased())
                        }
                    }

                    return attributeID
                }
            }

            /// `k8s.service.label` **UNSTABLE**: The label placed on the Service, the `<key>` being the label name, the value being the label value, even if the value is empty.
            ///
            /// - Stability: development
            /// - Type: templateString
            /// - Examples:
            ///     - `my-service`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - A label `app` with value `my-service` SHOULD be recorded as
            ///   the `k8s.service.label.app` attribute with value `"my-service"`.
            /// - A label `data` with empty string value SHOULD be recorded as
            ///   the `k8s.service.label.data` attribute with value `""`.
            public var label: LabelAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct LabelAttributes {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: String) {
                    let attributeID = self.attributeID(forKey: key)
                    self.attributes[attributeID] = value
                }

                private func attributeID(forKey key: String) -> String {
                    var attributeID = "k8s.service.label."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeID.append("_")
                        } else {
                            attributeID.append(character.lowercased())
                        }
                    }

                    return attributeID
                }
            }

            /// `k8s.service.selector` **UNSTABLE**: The selector key-value pair placed on the Service, the `<key>` being the selector key, the value being the selector value.
            ///
            /// - Stability: development
            /// - Type: templateString
            /// - Examples:
            ///     - `my-app`
            ///     - `v1`
            ///
            /// These selectors are used to correlate with pod labels. Each selector key-value pair becomes a separate attribute.
            ///
            /// Examples:
            ///
            /// - A selector `app=my-app` SHOULD be recorded as
            ///   the `k8s.service.selector.app` attribute with value `"my-app"`.
            /// - A selector `version=v1` SHOULD be recorded as
            ///   the `k8s.service.selector.version` attribute with value `"v1"`.
            public var selector: SelectorAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct SelectorAttributes {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: String) {
                    let attributeID = self.attributeID(forKey: key)
                    self.attributes[attributeID] = value
                }

                private func attributeID(forKey key: String) -> String {
                    var attributeID = "k8s.service.selector."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeID.append("_")
                        } else {
                            attributeID.append(character.lowercased())
                        }
                    }

                    return attributeID
                }
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `k8s.service.name` **UNSTABLE**: The name of the Service.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `my-service`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.service.name) }

                /// `k8s.service.publish_not_ready_addresses` **UNSTABLE**: Whether the Service publishes not-ready endpoints.
                ///
                /// - Stability: development
                /// - Type: boolean
                /// - Examples:
                ///     - `true`
                ///     - `false`
                ///
                /// Whether the Service is configured to publish endpoints before the pods are ready.
                /// This attribute is typically used to indicate that a Service (such as a headless
                /// Service for a StatefulSet) allows peer discovery before pods pass their readiness probes.
                /// It aligns with the `publishNotReadyAddresses` field of the
                /// [K8s ServiceSpec](https://kubernetes.io/docs/reference/kubernetes-api/service-resources/service-v1/#ServiceSpec).
                public var publishNotReadyAddresses: SpanAttributeKey<Bool> {
                    .init(name: OTelAttribute.k8s.service.publishNotReadyAddresses)
                }

                /// `k8s.service.traffic_distribution` **UNSTABLE**: The traffic distribution policy for the Service.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `PreferSameZone`
                ///     - `PreferSameNode`
                ///
                /// Specifies how traffic is distributed to endpoints for this Service.
                /// This attribute aligns with the `trafficDistribution` field of the
                /// [K8s ServiceSpec](https://kubernetes.io/docs/reference/networking/virtual-ips/#traffic-distribution).
                /// Known values include `PreferSameZone` (prefer endpoints in the same zone as the client) and
                /// `PreferSameNode` (prefer endpoints on the same node, fallback to same zone, then cluster-wide).
                /// If this field is not set on the Service, the attribute SHOULD NOT be emitted.
                /// When not set, Kubernetes distributes traffic evenly across all endpoints cluster-wide.
                public var trafficDistribution: SpanAttributeKey<String> {
                    .init(name: OTelAttribute.k8s.service.trafficDistribution)
                }

                /// `k8s.service.type` **UNSTABLE**: The type of the Kubernetes Service.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `ClusterIP`: ClusterIP service type
                ///     - `NodePort`: NodePort service type
                ///     - `LoadBalancer`: LoadBalancer service type
                ///     - `ExternalName`: ExternalName service type
                /// - Examples:
                ///     - `ClusterIP`
                ///     - `NodePort`
                ///     - `LoadBalancer`
                ///
                /// This attribute aligns with the `type` field of the
                /// [K8s ServiceSpec](https://kubernetes.io/docs/reference/kubernetes-api/service-resources/service-v1/#ServiceSpec).
                public var `type`: SpanAttributeKey<TypeEnum> { .init(name: OTelAttribute.k8s.service.`type`) }

                public struct TypeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                    public let rawValue: String
                    public init(rawValue: String) {
                        self.rawValue = rawValue
                    }
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
                    }
                }

                /// `k8s.service.uid` **UNSTABLE**: The UID of the Service.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
                public var uid: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.service.uid) }
            }

            /// `k8s.service.endpoint` namespace
            public var endpoint: EndpointAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct EndpointAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `k8s.service.endpoint.address_type` **UNSTABLE**: The address type of the service endpoint.
                    ///
                    /// - Stability: development
                    /// - Type: enum
                    ///     - `IPv4`: IPv4 address type
                    ///     - `IPv6`: IPv6 address type
                    ///     - `FQDN`: FQDN address type
                    /// - Examples:
                    ///     - `IPv4`
                    ///     - `IPv6`
                    ///
                    /// The network address family or type of the endpoint.
                    /// This attribute aligns with the `addressType` field of the
                    /// [K8s EndpointSlice](https://kubernetes.io/docs/reference/kubernetes-api/service-resources/endpoint-slice-v1/).
                    /// It is used to differentiate metrics when a Service is backed by multiple address types
                    /// (e.g., in dual-stack clusters).
                    public var addressType: SpanAttributeKey<AddressTypeEnum> {
                        .init(name: OTelAttribute.k8s.service.endpoint.addressType)
                    }

                    public struct AddressTypeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                        public let rawValue: String
                        public init(rawValue: String) {
                            self.rawValue = rawValue
                        }
                        public func toSpanAttribute() -> Tracing.SpanAttribute {
                            .string(self.rawValue)
                        }
                    }

                    /// `k8s.service.endpoint.condition` **UNSTABLE**: The condition of the service endpoint.
                    ///
                    /// - Stability: development
                    /// - Type: enum
                    ///     - `ready`: The endpoint is ready to receive new connections.
                    ///     - `serving`: The endpoint is currently handling traffic.
                    ///     - `terminating`: The endpoint is in the process of shutting down.
                    /// - Examples:
                    ///     - `ready`
                    ///     - `serving`
                    ///     - `terminating`
                    ///
                    /// The current operational condition of the service endpoint.
                    /// An endpoint can have multiple conditions set at once (e.g., both `serving` and `terminating` during rollout).
                    /// This attribute aligns with the condition fields in the [K8s EndpointSlice](https://kubernetes.io/docs/reference/kubernetes-api/service-resources/endpoint-slice-v1/).
                    public var condition: SpanAttributeKey<ConditionEnum> {
                        .init(name: OTelAttribute.k8s.service.endpoint.condition)
                    }

                    public struct ConditionEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                        public let rawValue: String
                        public init(rawValue: String) {
                            self.rawValue = rawValue
                        }
                        public func toSpanAttribute() -> Tracing.SpanAttribute {
                            .string(self.rawValue)
                        }
                    }

                    /// `k8s.service.endpoint.zone` **UNSTABLE**: The zone of the service endpoint.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Examples:
                    ///     - `us-east-1a`
                    ///     - `us-west-2b`
                    ///     - `zone-a`
                    ///     - ``
                    ///
                    /// The zone where the endpoint is located, typically corresponding to a failure domain.
                    /// This attribute aligns with the `zone` field of endpoints in the
                    /// [K8s EndpointSlice](https://kubernetes.io/docs/reference/kubernetes-api/service-resources/endpoint-slice-v1/).
                    /// It enables zone-aware monitoring of service endpoint distribution and supports
                    /// features like [Topology Aware Routing](https://kubernetes.io/docs/concepts/services-networking/topology-aware-routing/).
                    ///
                    /// If the zone is not populated (e.g., nodes without the `topology.kubernetes.io/zone` label),
                    /// the attribute value will be an empty string.
                    public var zone: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.service.endpoint.zone) }
                }
            }
        }
        #endif

        /// `k8s.statefulset` namespace
        public var statefulset: StatefulsetAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct StatefulsetAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            /// `k8s.statefulset.annotation`: The annotation placed on the StatefulSet, the `<key>` being the annotation name, the value being the annotation value, even if the value is empty.
            ///
            /// - Stability: stable
            /// - Type: templateString
            /// - Examples:
            ///     - `1`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - An annotation `replicas` with value `1` SHOULD be recorded
            ///   as the `k8s.statefulset.annotation.replicas` attribute with value `"1"`.
            /// - An annotation `data` with empty string value SHOULD be recorded as
            ///   the `k8s.statefulset.annotation.data` attribute with value `""`.
            public var annotation: AnnotationAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct AnnotationAttributes {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: String) {
                    let attributeID = self.attributeID(forKey: key)
                    self.attributes[attributeID] = value
                }

                private func attributeID(forKey key: String) -> String {
                    var attributeID = "k8s.statefulset.annotation."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeID.append("_")
                        } else {
                            attributeID.append(character.lowercased())
                        }
                    }

                    return attributeID
                }
            }

            /// `k8s.statefulset.label`: The label placed on the StatefulSet, the `<key>` being the label name, the value being the label value, even if the value is empty.
            ///
            /// - Stability: stable
            /// - Type: templateString
            /// - Examples:
            ///     - `guestbook`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - A label `app` with value `guestbook` SHOULD be recorded
            ///   as the `k8s.statefulset.label.app` attribute with value `"guestbook"`.
            /// - A label `injected` with empty string value SHOULD be recorded as
            ///   the `k8s.statefulset.label.injected` attribute with value `""`.
            public var label: LabelAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            public struct LabelAttributes {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public mutating func set(_ key: String, to value: String) {
                    let attributeID = self.attributeID(forKey: key)
                    self.attributes[attributeID] = value
                }

                private func attributeID(forKey key: String) -> String {
                    var attributeID = "k8s.statefulset.label."

                    for index in key.indices {
                        let character = key[index]

                        if character == "-" {
                            attributeID.append("_")
                        } else {
                            attributeID.append(character.lowercased())
                        }
                    }

                    return attributeID
                }
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `k8s.statefulset.name`: The name of the StatefulSet.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Example: `opentelemetry`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.statefulset.name) }

                /// `k8s.statefulset.uid`: The UID of the StatefulSet.
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
                public var uid: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.statefulset.uid) }
            }
        }

        #if Experimental
        /// `k8s.storageclass` namespace
        public var storageclass: StorageclassAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct StorageclassAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `k8s.storageclass.name` **UNSTABLE**: The name of K8s [StorageClass](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.34/#storageclass-v1-storage-k8s-io) object.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `gold.storageclass.storage.k8s.io`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.storageclass.name) }
            }
        }
        #endif

        #if Experimental
        /// `k8s.volume` namespace
        public var volume: VolumeAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct VolumeAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `k8s.volume.name` **UNSTABLE**: The name of the K8s volume.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `volume0`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.volume.name) }

                /// `k8s.volume.type` **UNSTABLE**: The type of the K8s volume.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `persistentVolumeClaim`: A [persistentVolumeClaim](https://kubernetes.io/docs/concepts/storage/volumes/#persistentvolumeclaim) volume
                ///     - `configMap`: A [configMap](https://kubernetes.io/docs/concepts/storage/volumes/#configmap) volume
                ///     - `downwardAPI`: A [downwardAPI](https://kubernetes.io/docs/concepts/storage/volumes/#downwardapi) volume
                ///     - `emptyDir`: An [emptyDir](https://kubernetes.io/docs/concepts/storage/volumes/#emptydir) volume
                ///     - `secret`: A [secret](https://kubernetes.io/docs/concepts/storage/volumes/#secret) volume
                ///     - `local`: A [local](https://kubernetes.io/docs/concepts/storage/volumes/#local) volume
                /// - Examples:
                ///     - `emptyDir`
                ///     - `persistentVolumeClaim`
                public var `type`: SpanAttributeKey<TypeEnum> { .init(name: OTelAttribute.k8s.volume.`type`) }

                public struct TypeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
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
        #endif
    }
}

#endif
