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
    /// `k8s` namespace
    public enum k8s {
        /// `k8s.cluster` namespace
        public enum cluster {
            /// `k8s.cluster.name` **UNSTABLE**: The name of the cluster.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `opentelemetry-cluster`
            public static let name = "k8s.cluster.name"

            /// `k8s.cluster.uid` **UNSTABLE**: A pseudo-ID for the cluster, set to the UID of the `kube-system` namespace.
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
            public static let uid = "k8s.cluster.uid"
        }

        /// `k8s.container` namespace
        public enum container {
            /// `k8s.container.name` **UNSTABLE**: The name of the Container from Pod specification, must be unique within a Pod. Container runtime usually uses different globally unique name (`container.name`).
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `redis`
            public static let name = "k8s.container.name"

            /// `k8s.container.restart_count` **UNSTABLE**: Number of times the container was restarted. This attribute can be used to identify a particular container (running or stopped) within a container spec.
            ///
            /// - Stability: development
            /// - Type: int
            public static let restartCount = "k8s.container.restart_count"

            /// `k8s.container.status` namespace
            public enum status {
                /// `k8s.container.status.last_terminated_reason` **UNSTABLE**: Last terminated reason of the Container.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `Evicted`
                ///     - `Error`
                public static let lastTerminatedReason = "k8s.container.status.last_terminated_reason"

                /// `k8s.container.status.reason` **UNSTABLE**: The reason for the container state. Corresponds to the `reason` field of the: [K8s ContainerStateWaiting](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#containerstatewaiting-v1-core) or [K8s ContainerStateTerminated](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#containerstateterminated-v1-core)
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
                public static let reason = "k8s.container.status.reason"

                /// `k8s.container.status.state` **UNSTABLE**: The state of the container. [K8s ContainerState](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#containerstate-v1-core)
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
                public static let state = "k8s.container.status.state"
            }
        }

        /// `k8s.cronjob` namespace
        public enum cronjob {
            /// `k8s.cronjob.annotation` **UNSTABLE**: The cronjob annotation placed on the CronJob, the `<key>` being the annotation name, the value being the annotation value.
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
            public static let annotation = "k8s.cronjob.annotation"

            /// `k8s.cronjob.label` **UNSTABLE**: The label placed on the CronJob, the `<key>` being the label name, the value being the label value.
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
            public static let label = "k8s.cronjob.label"

            /// `k8s.cronjob.name` **UNSTABLE**: The name of the CronJob.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `opentelemetry`
            public static let name = "k8s.cronjob.name"

            /// `k8s.cronjob.uid` **UNSTABLE**: The UID of the CronJob.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
            public static let uid = "k8s.cronjob.uid"
        }

        /// `k8s.daemonset` namespace
        public enum daemonset {
            /// `k8s.daemonset.annotation` **UNSTABLE**: The annotation placed on the DaemonSet, the `<key>` being the annotation name, the value being the annotation value, even if the value is empty.
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
            public static let annotation = "k8s.daemonset.annotation"

            /// `k8s.daemonset.label` **UNSTABLE**: The label placed on the DaemonSet, the `<key>` being the label name, the value being the label value, even if the value is empty.
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
            public static let label = "k8s.daemonset.label"

            /// `k8s.daemonset.name` **UNSTABLE**: The name of the DaemonSet.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `opentelemetry`
            public static let name = "k8s.daemonset.name"

            /// `k8s.daemonset.uid` **UNSTABLE**: The UID of the DaemonSet.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
            public static let uid = "k8s.daemonset.uid"
        }

        /// `k8s.deployment` namespace
        public enum deployment {
            /// `k8s.deployment.annotation` **UNSTABLE**: The annotation placed on the Deployment, the `<key>` being the annotation name, the value being the annotation value, even if the value is empty.
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
            public static let annotation = "k8s.deployment.annotation"

            /// `k8s.deployment.label` **UNSTABLE**: The label placed on the Deployment, the `<key>` being the label name, the value being the label value, even if the value is empty.
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
            public static let label = "k8s.deployment.label"

            /// `k8s.deployment.name` **UNSTABLE**: The name of the Deployment.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `opentelemetry`
            public static let name = "k8s.deployment.name"

            /// `k8s.deployment.uid` **UNSTABLE**: The UID of the Deployment.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
            public static let uid = "k8s.deployment.uid"
        }

        /// `k8s.hpa` namespace
        public enum hpa {
            /// `k8s.hpa.name` **UNSTABLE**: The name of the horizontal pod autoscaler.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `opentelemetry`
            public static let name = "k8s.hpa.name"

            /// `k8s.hpa.uid` **UNSTABLE**: The UID of the horizontal pod autoscaler.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
            public static let uid = "k8s.hpa.uid"

            /// `k8s.hpa.metric` namespace
            public enum metric {
                /// `k8s.hpa.metric.type` **UNSTABLE**: The type of metric source for the horizontal pod autoscaler.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `Resource`
                ///     - `ContainerResource`
                ///
                /// This attribute reflects the `type` field of spec.metrics[] in the HPA.
                public static let `type` = "k8s.hpa.metric.type"
            }

            /// `k8s.hpa.scaletargetref` namespace
            public enum scaletargetref {
                /// `k8s.hpa.scaletargetref.api_version` **UNSTABLE**: The API version of the target resource to scale for the HorizontalPodAutoscaler.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `apps/v1`
                ///     - `autoscaling/v2`
                ///
                /// This maps to the `apiVersion` field in the `scaleTargetRef` of the HPA spec.
                public static let apiVersion = "k8s.hpa.scaletargetref.api_version"

                /// `k8s.hpa.scaletargetref.kind` **UNSTABLE**: The kind of the target resource to scale for the HorizontalPodAutoscaler.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `Deployment`
                ///     - `StatefulSet`
                ///
                /// This maps to the `kind` field in the `scaleTargetRef` of the HPA spec.
                public static let kind = "k8s.hpa.scaletargetref.kind"

                /// `k8s.hpa.scaletargetref.name` **UNSTABLE**: The name of the target resource to scale for the HorizontalPodAutoscaler.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `my-deployment`
                ///     - `my-statefulset`
                ///
                /// This maps to the `name` field in the `scaleTargetRef` of the HPA spec.
                public static let name = "k8s.hpa.scaletargetref.name"
            }
        }

        /// `k8s.hugepage` namespace
        public enum hugepage {
            /// `k8s.hugepage.size` **UNSTABLE**: The size (identifier) of the K8s huge page.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `2Mi`
            public static let size = "k8s.hugepage.size"
        }

        /// `k8s.job` namespace
        public enum job {
            /// `k8s.job.annotation` **UNSTABLE**: The annotation placed on the Job, the `<key>` being the annotation name, the value being the annotation value, even if the value is empty.
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
            public static let annotation = "k8s.job.annotation"

            /// `k8s.job.label` **UNSTABLE**: The label placed on the Job, the `<key>` being the label name, the value being the label value, even if the value is empty.
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
            public static let label = "k8s.job.label"

            /// `k8s.job.name` **UNSTABLE**: The name of the Job.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `opentelemetry`
            public static let name = "k8s.job.name"

            /// `k8s.job.uid` **UNSTABLE**: The UID of the Job.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
            public static let uid = "k8s.job.uid"
        }

        /// `k8s.namespace` namespace
        public enum namespace {
            /// `k8s.namespace.annotation` **UNSTABLE**: The annotation placed on the Namespace, the `<key>` being the annotation name, the value being the annotation value, even if the value is empty.
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
            public static let annotation = "k8s.namespace.annotation"

            /// `k8s.namespace.label` **UNSTABLE**: The label placed on the Namespace, the `<key>` being the label name, the value being the label value, even if the value is empty.
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
            public static let label = "k8s.namespace.label"

            /// `k8s.namespace.name` **UNSTABLE**: The name of the namespace that the pod is running in.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `default`
            public static let name = "k8s.namespace.name"

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
            /// [K8s NamespaceStatus](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#namespacestatus-v1-core)
            public static let phase = "k8s.namespace.phase"
        }

        /// `k8s.node` namespace
        public enum node {
            /// `k8s.node.annotation` **UNSTABLE**: The annotation placed on the Node, the `<key>` being the annotation name, the value being the annotation value, even if the value is empty.
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
            public static let annotation = "k8s.node.annotation"

            /// `k8s.node.label` **UNSTABLE**: The label placed on the Node, the `<key>` being the label name, the value being the label value, even if the value is empty.
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
            public static let label = "k8s.node.label"

            /// `k8s.node.name` **UNSTABLE**: The name of the Node.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `node-1`
            public static let name = "k8s.node.name"

            /// `k8s.node.uid` **UNSTABLE**: The UID of the Node.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `1eb3a0c6-0477-4080-a9cb-0cb7db65c6a2`
            public static let uid = "k8s.node.uid"

            /// `k8s.node.condition` namespace
            public enum condition {
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
                /// [NodeCondition](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#nodecondition-v1-core)
                public static let status = "k8s.node.condition.status"

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
                /// by [K8s documentation](https://v1-32.docs.kubernetes.io/docs/reference/node/node-status/#condition).
                ///
                /// This attribute aligns with the `type` field of the
                /// [NodeCondition](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#nodecondition-v1-core)
                ///
                /// The set of possible values is not limited to those listed here. Managed Kubernetes environments,
                /// or custom controllers MAY introduce additional node condition types.
                /// When this occurs, the exact value as reported by the Kubernetes API SHOULD be used.
                public static let `type` = "k8s.node.condition.type"
            }
        }

        /// `k8s.pod` namespace
        public enum pod {
            /// `k8s.pod.annotation` **UNSTABLE**: The annotation placed on the Pod, the `<key>` being the annotation name, the value being the annotation value.
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
            public static let annotation = "k8s.pod.annotation"

            /// `k8s.pod.label` **UNSTABLE**: The label placed on the Pod, the `<key>` being the label name, the value being the label value.
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
            public static let label = "k8s.pod.label"

            /// `k8s.pod.labels` **UNSTABLE**: Deprecated, use `k8s.pod.label` instead.
            ///
            /// - Stability: development
            /// - Type: templateString
            /// - Example: `my-app`
            @available(*, deprecated, renamed: "OTelAttribute.k8s.pod.label")
            public static let labels = "k8s.pod.labels"

            /// `k8s.pod.name` **UNSTABLE**: The name of the Pod.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `opentelemetry-pod-autoconf`
            public static let name = "k8s.pod.name"

            /// `k8s.pod.uid` **UNSTABLE**: The UID of the Pod.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
            public static let uid = "k8s.pod.uid"
        }

        /// `k8s.replicaset` namespace
        public enum replicaset {
            /// `k8s.replicaset.annotation` **UNSTABLE**: The annotation placed on the ReplicaSet, the `<key>` being the annotation name, the value being the annotation value, even if the value is empty.
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
            public static let annotation = "k8s.replicaset.annotation"

            /// `k8s.replicaset.label` **UNSTABLE**: The label placed on the ReplicaSet, the `<key>` being the label name, the value being the label value, even if the value is empty.
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
            public static let label = "k8s.replicaset.label"

            /// `k8s.replicaset.name` **UNSTABLE**: The name of the ReplicaSet.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `opentelemetry`
            public static let name = "k8s.replicaset.name"

            /// `k8s.replicaset.uid` **UNSTABLE**: The UID of the ReplicaSet.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
            public static let uid = "k8s.replicaset.uid"
        }

        /// `k8s.replicationcontroller` namespace
        public enum replicationcontroller {
            /// `k8s.replicationcontroller.name` **UNSTABLE**: The name of the replication controller.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `opentelemetry`
            public static let name = "k8s.replicationcontroller.name"

            /// `k8s.replicationcontroller.uid` **UNSTABLE**: The UID of the replication controller.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
            public static let uid = "k8s.replicationcontroller.uid"
        }

        /// `k8s.resourcequota` namespace
        public enum resourcequota {
            /// `k8s.resourcequota.name` **UNSTABLE**: The name of the resource quota.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `opentelemetry`
            public static let name = "k8s.resourcequota.name"

            /// `k8s.resourcequota.resource_name` **UNSTABLE**: The name of the K8s resource a resource quota defines.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `count/replicationcontrollers`
            ///
            /// The value for this attribute can be either the full `count/<resource>[.<group>]` string (e.g., count/deployments.apps, count/pods), or, for certain core Kubernetes resources, just the resource name (e.g., pods, services, configmaps). Both forms are supported by Kubernetes for object count quotas. See [Kubernetes Resource Quotas documentation](https://kubernetes.io/docs/concepts/policy/resource-quotas/#object-count-quota) for more details.
            public static let resourceName = "k8s.resourcequota.resource_name"

            /// `k8s.resourcequota.uid` **UNSTABLE**: The UID of the resource quota.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
            public static let uid = "k8s.resourcequota.uid"
        }

        /// `k8s.statefulset` namespace
        public enum statefulset {
            /// `k8s.statefulset.annotation` **UNSTABLE**: The annotation placed on the StatefulSet, the `<key>` being the annotation name, the value being the annotation value, even if the value is empty.
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
            public static let annotation = "k8s.statefulset.annotation"

            /// `k8s.statefulset.label` **UNSTABLE**: The label placed on the StatefulSet, the `<key>` being the label name, the value being the label value, even if the value is empty.
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
            public static let label = "k8s.statefulset.label"

            /// `k8s.statefulset.name` **UNSTABLE**: The name of the StatefulSet.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `opentelemetry`
            public static let name = "k8s.statefulset.name"

            /// `k8s.statefulset.uid` **UNSTABLE**: The UID of the StatefulSet.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `275ecb36-5aa8-4c2a-9c47-d8bb681b9aff`
            public static let uid = "k8s.statefulset.uid"
        }

        /// `k8s.storageclass` namespace
        public enum storageclass {
            /// `k8s.storageclass.name` **UNSTABLE**: The name of K8s [StorageClass](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.30/#storageclass-v1-storage-k8s-io) object.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `gold.storageclass.storage.k8s.io`
            public static let name = "k8s.storageclass.name"
        }

        /// `k8s.volume` namespace
        public enum volume {
            /// `k8s.volume.name` **UNSTABLE**: The name of the K8s volume.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `volume0`
            public static let name = "k8s.volume.name"

            /// `k8s.volume.type` **UNSTABLE**: The type of the K8s volume.
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
            public static let `type` = "k8s.volume.type"
        }
    }
    #endif
}
