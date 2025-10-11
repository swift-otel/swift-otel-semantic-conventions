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
                /// - Stability: development
                /// - Type: string
                /// - Example: `opentelemetry-cluster`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.cluster.name) }

                /// `k8s.cluster.uid`: A pseudo-ID for the cluster, set to the UID of the `kube-system` namespace.
                ///
                /// - Stability: development
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
                /// - Stability: development
                /// - Type: string
                /// - Example: `redis`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.container.name) }

                /// `k8s.container.restart_count`: Number of times the container was restarted. This attribute can be used to identify a particular container (running or stopped) within a container spec.
                ///
                /// - Stability: development
                /// - Type: int
                public var restartCount: SpanAttributeKey<Int> { .init(name: OTelAttribute.k8s.container.restartCount) }
            }

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

                    /// `k8s.container.status.last_terminated_reason`: Last terminated reason of the Container.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Examples:
                    ///     - `Evicted`
                    ///     - `Error`
                    public var lastTerminatedReason: SpanAttributeKey<String> {
                        .init(name: OTelAttribute.k8s.container.status.lastTerminatedReason)
                    }

                    /// `k8s.container.status.reason`: The reason for the container state. Corresponds to the `reason` field of the: [K8s ContainerStateWaiting](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#containerstatewaiting-v1-core) or [K8s ContainerStateTerminated](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#containerstateterminated-v1-core)
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

                    /// `k8s.container.status.state`: The state of the container. [K8s ContainerState](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#containerstate-v1-core)
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
            /// - Stability: development
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
            /// - Stability: development
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
                /// - Stability: development
                /// - Type: string
                /// - Example: `opentelemetry`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.cronjob.name) }

                /// `k8s.cronjob.uid`: The UID of the CronJob.
                ///
                /// - Stability: development
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
            /// - Stability: development
            /// - Type: templateString
            /// - Examples:
            ///     - `1`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - A label `replicas` with value `1` SHOULD be recorded
            ///   as the `k8s.daemonset.annotation.replicas` attribute with value `"1"`.
            /// - A label `data` with empty string value SHOULD be recorded as
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
            /// - Stability: development
            /// - Type: templateString
            /// - Examples:
            ///     - `guestbook`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - A label `app` with value `guestbook` SHOULD be recorded
            ///   as the `k8s.daemonset.label.app` attribute with value `"guestbook"`.
            /// - A label `data` with empty string value SHOULD be recorded as
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
                /// - Stability: development
                /// - Type: string
                /// - Example: `opentelemetry`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.daemonset.name) }

                /// `k8s.daemonset.uid`: The UID of the DaemonSet.
                ///
                /// - Stability: development
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
            /// - Stability: development
            /// - Type: templateString
            /// - Examples:
            ///     - `1`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - A label `replicas` with value `1` SHOULD be recorded
            ///   as the `k8s.deployment.annotation.replicas` attribute with value `"1"`.
            /// - A label `data` with empty string value SHOULD be recorded as
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
            /// - Stability: development
            /// - Type: templateString
            /// - Examples:
            ///     - `guestbook`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - A label `replicas` with value `0` SHOULD be recorded
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
                /// - Stability: development
                /// - Type: string
                /// - Example: `opentelemetry`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.deployment.name) }

                /// `k8s.deployment.uid`: The UID of the Deployment.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
                public var uid: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.deployment.uid) }
            }
        }

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

                /// `k8s.hpa.name`: The name of the horizontal pod autoscaler.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `opentelemetry`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.hpa.name) }

                /// `k8s.hpa.uid`: The UID of the horizontal pod autoscaler.
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

                    /// `k8s.hpa.metric.type`: The type of metric source for the horizontal pod autoscaler.
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

                    /// `k8s.hpa.scaletargetref.api_version`: The API version of the target resource to scale for the HorizontalPodAutoscaler.
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

                    /// `k8s.hpa.scaletargetref.kind`: The kind of the target resource to scale for the HorizontalPodAutoscaler.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Examples:
                    ///     - `Deployment`
                    ///     - `StatefulSet`
                    ///
                    /// This maps to the `kind` field in the `scaleTargetRef` of the HPA spec.
                    public var kind: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.hpa.scaletargetref.kind) }

                    /// `k8s.hpa.scaletargetref.name`: The name of the target resource to scale for the HorizontalPodAutoscaler.
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

                /// `k8s.hugepage.size`: The size (identifier) of the K8s huge page.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `2Mi`
                public var size: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.hugepage.size) }
            }
        }

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
            /// - Stability: development
            /// - Type: templateString
            /// - Examples:
            ///     - `1`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - A label `number` with value `1` SHOULD be recorded
            ///   as the `k8s.job.annotation.number` attribute with value `"1"`.
            /// - A label `data` with empty string value SHOULD be recorded as
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
            /// - Stability: development
            /// - Type: templateString
            /// - Examples:
            ///     - `ci`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - A label `jobtype` with value `ci` SHOULD be recorded
            ///   as the `k8s.job.label.jobtype` attribute with value `"ci"`.
            /// - A label `data` with empty string value SHOULD be recorded as
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
                /// - Stability: development
                /// - Type: string
                /// - Example: `opentelemetry`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.job.name) }

                /// `k8s.job.uid`: The UID of the Job.
                ///
                /// - Stability: development
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
            /// - Stability: development
            /// - Type: templateString
            /// - Examples:
            ///     - `0`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - A label `ttl` with value `0` SHOULD be recorded
            ///   as the `k8s.namespace.annotation.ttl` attribute with value `"0"`.
            /// - A label `data` with empty string value SHOULD be recorded as
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
            /// - Stability: development
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
                /// - Stability: development
                /// - Type: string
                /// - Example: `default`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.namespace.name) }

                /// `k8s.namespace.phase`: The phase of the K8s namespace.
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
                /// [K8s NamespaceStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#namespacestatus-v1-core)
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
            /// - Stability: development
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
            /// - Stability: development
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
                /// - Stability: development
                /// - Type: string
                /// - Example: `node-1`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.node.name) }

                /// `k8s.node.uid`: The UID of the Node.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `1eb3a0c6-0477-4080-a9cb-0cb7db65c6a2`
                public var uid: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.node.uid) }
            }

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

                    /// `k8s.node.condition.status`: The status of the condition, one of True, False, Unknown.
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
                    /// [NodeCondition](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#nodecondition-v1-core)
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

                    /// `k8s.node.condition.type`: The condition type of a K8s Node.
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
                    /// by [K8s documentation](https://v1-32.docs.kubernetes.io/docs/reference/node/node-status/#condition).
                    ///
                    /// This attribute aligns with the `type` field of the
                    /// [NodeCondition](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#nodecondition-v1-core)
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
        }

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
            /// - Stability: development
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
            /// - Stability: development
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

            /// `k8s.pod.labels`: Deprecated, use `k8s.pod.label` instead.
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

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `k8s.pod.name`: The name of the Pod.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `opentelemetry-pod-autoconf`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.pod.name) }

                /// `k8s.pod.uid`: The UID of the Pod.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
                public var uid: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.pod.uid) }
            }
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
            /// - Stability: development
            /// - Type: templateString
            /// - Examples:
            ///     - `0`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - A label `replicas` with value `0` SHOULD be recorded
            ///   as the `k8s.replicaset.annotation.replicas` attribute with value `"0"`.
            /// - A label `data` with empty string value SHOULD be recorded as
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
            /// - Stability: development
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
                /// - Stability: development
                /// - Type: string
                /// - Example: `opentelemetry`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.replicaset.name) }

                /// `k8s.replicaset.uid`: The UID of the ReplicaSet.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
                public var uid: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.replicaset.uid) }
            }
        }

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

                /// `k8s.replicationcontroller.name`: The name of the replication controller.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `opentelemetry`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.replicationcontroller.name) }

                /// `k8s.replicationcontroller.uid`: The UID of the replication controller.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
                public var uid: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.replicationcontroller.uid) }
            }
        }

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

                /// `k8s.resourcequota.name`: The name of the resource quota.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `opentelemetry`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.resourcequota.name) }

                /// `k8s.resourcequota.resource_name`: The name of the K8s resource a resource quota defines.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `count/replicationcontrollers`
                ///
                /// The value for this attribute can be either the full `count/<resource>[.<group>]` string (e.g., count/deployments.apps, count/pods), or, for certain core Kubernetes resources, just the resource name (e.g., pods, services, configmaps). Both forms are supported by Kubernetes for object count quotas. See [Kubernetes Resource Quotas documentation](https://kubernetes.io/docs/concepts/policy/resource-quotas/#object-count-quota) for more details.
                public var resourceName: SpanAttributeKey<String> {
                    .init(name: OTelAttribute.k8s.resourcequota.resourceName)
                }

                /// `k8s.resourcequota.uid`: The UID of the resource quota.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
                public var uid: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.resourcequota.uid) }
            }
        }

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
            /// - Stability: development
            /// - Type: templateString
            /// - Examples:
            ///     - `1`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - A label `replicas` with value `1` SHOULD be recorded
            ///   as the `k8s.statefulset.annotation.replicas` attribute with value `"1"`.
            /// - A label `data` with empty string value SHOULD be recorded as
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
            /// - Stability: development
            /// - Type: templateString
            /// - Examples:
            ///     - `guestbook`
            ///     - ``
            ///
            /// Examples:
            ///
            /// - A label `replicas` with value `0` SHOULD be recorded
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
                /// - Stability: development
                /// - Type: string
                /// - Example: `opentelemetry`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.statefulset.name) }

                /// `k8s.statefulset.uid`: The UID of the StatefulSet.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
                public var uid: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.statefulset.uid) }
            }
        }

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

                /// `k8s.storageclass.name`: The name of K8s [StorageClass](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#storageclass-v1-storage-k8s-io) object.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `gold.storageclass.storage.k8s.io`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.storageclass.name) }
            }
        }

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

                /// `k8s.volume.name`: The name of the K8s volume.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `volume0`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.k8s.volume.name) }

                /// `k8s.volume.type`: The type of the K8s volume.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `persistentVolumeClaim`: A [persistentVolumeClaim](https://v1-30.docs.kubernetes.io/docs/concepts/storage/volumes/#persistentvolumeclaim) volume
                ///     - `configMap`: A [configMap](https://v1-30.docs.kubernetes.io/docs/concepts/storage/volumes/#configmap) volume
                ///     - `downwardAPI`: A [downwardAPI](https://v1-30.docs.kubernetes.io/docs/concepts/storage/volumes/#downwardapi) volume
                ///     - `emptyDir`: An [emptyDir](https://v1-30.docs.kubernetes.io/docs/concepts/storage/volumes/#emptydir) volume
                ///     - `secret`: A [secret](https://v1-30.docs.kubernetes.io/docs/concepts/storage/volumes/#secret) volume
                ///     - `local`: A [local](https://v1-30.docs.kubernetes.io/docs/concepts/storage/volumes/#local) volume
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
    }
    #endif
}

#endif
