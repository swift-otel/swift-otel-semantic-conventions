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
    /// `container` namespace
    public var container: ContainerAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct ContainerAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        /// `container.label` **UNSTABLE**: Container labels, `<key>` being the label name, the value being the label value.
        ///
        /// - Stability: development
        /// - Type: templateString
        /// - Example: `nginx`
        ///
        /// For example, a docker container label `app` with value `nginx` SHOULD be recorded as the `container.label.app` attribute with value `"nginx"`.
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
                var attributeID = "container.label."

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

        /// `container.labels` **UNSTABLE**: Deprecated, use `container.label` instead.
        ///
        /// - Stability: development
        /// - Type: templateString
        /// - Example: `nginx`
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
                var attributeID = "container.labels."

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

            /// `container.command` **UNSTABLE**: The command used to run the container (i.e. the command name).
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `otelcontribcol`
            ///
            /// If using embedded credentials or sensitive data, it is recommended to remove them to prevent potential leakage.
            public var command: SpanAttributeKey<String> { .init(name: OTelAttribute.container.command) }

            /// `container.command_args` **UNSTABLE**: All the command arguments (including the command/executable itself) run by the container.
            ///
            /// - Stability: development
            /// - Type: stringArray
            public var commandArgs: SpanAttributeKey<[String]> { .init(name: OTelAttribute.container.commandArgs) }

            /// `container.command_line` **UNSTABLE**: The full command run by the container as a single string representing the full command.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `otelcontribcol --config config.yaml`
            public var commandLine: SpanAttributeKey<String> { .init(name: OTelAttribute.container.commandLine) }

            /// `container.id` **UNSTABLE**: Container ID. Usually a UUID, as for example used to [identify Docker containers](https://docs.docker.com/engine/containers/run/#container-identification). The UUID might be abbreviated.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `a3bf90e006b2`
            public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.container.id) }

            /// `container.name` **UNSTABLE**: Container name used by container runtime.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `opentelemetry-autoconf`
            public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.container.name) }

            /// `container.runtime` **UNSTABLE**: The container runtime managing this container.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `docker`
            ///     - `containerd`
            ///     - `rkt`
            @available(*, deprecated, renamed: "SpanAttributes.container.runtime.name")
            public var _runtime: SpanAttributeKey<String> { .init(name: OTelAttribute.container._runtime) }
        }

        /// `container.cpu` namespace
        public var cpu: CpuAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct CpuAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `container.cpu.state` **UNSTABLE**: Deprecated, use `cpu.mode` instead.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `user`: When tasks of the cgroup are in user mode (Linux). When all container processes are in user mode (Windows).
                ///     - `system`: When CPU is used by the system (host OS)
                ///     - `kernel`: When tasks of the cgroup are in kernel mode (Linux). When all container processes are in kernel mode (Windows).
                /// - Examples:
                ///     - `user`
                ///     - `kernel`
                @available(*, deprecated, renamed: "SpanAttributes.cpu.mode")
                public var state: SpanAttributeKey<StateEnum> { .init(name: OTelAttribute.container.cpu.state) }

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

        /// `container.csi` namespace
        public var csi: CsiAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct CsiAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
            }

            /// `container.csi.plugin` namespace
            public var plugin: PluginAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct PluginAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `container.csi.plugin.name` **UNSTABLE**: The name of the CSI ([Container Storage Interface](https://github.com/container-storage-interface/spec)) plugin used by the volume.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `pd.csi.storage.gke.io`
                    ///
                    /// This can sometimes be referred to as a "driver" in CSI implementations. This should represent the `name` field of the GetPluginInfo RPC.
                    public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.container.csi.plugin.name) }
                }
            }

            /// `container.csi.volume` namespace
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

                    /// `container.csi.volume.id` **UNSTABLE**: The unique volume ID returned by the CSI ([Container Storage Interface](https://github.com/container-storage-interface/spec)) plugin.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `projects/my-gcp-project/zones/my-gcp-zone/disks/my-gcp-disk`
                    ///
                    /// This can sometimes be referred to as a "volume handle" in CSI implementations. This should represent the `Volume.volume_id` field in CSI spec.
                    public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.container.csi.volume.id) }
                }
            }
        }

        /// `container.image` namespace
        public var image: ImageAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ImageAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `container.image.id` **UNSTABLE**: Runtime specific image identifier. Usually a hash algorithm followed by a UUID.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `sha256:19c92d0a00d1b66d897bceaa7319bee0dd38a10a851c60bcec9474aa3f01e50f`
                ///
                /// Docker defines a sha256 of the image id; `container.image.id` corresponds to the `Image` field from the Docker container inspect [API](https://docs.docker.com/engine/api/v1.43/#tag/Container/operation/ContainerInspect) endpoint.
                /// K8s defines a link to the container registry repository with digest `"imageID": "registry.azurecr.io /namespace/service/dockerfile@sha256:bdeabd40c3a8a492eaf9e8e44d0ebbb84bac7ee25ac0cf8a7159d25f62555625"`.
                /// The ID is assigned by the container runtime and can vary in different environments. Consider using `oci.manifest.digest` if it is important to identify the same image in different environments/runtimes.
                public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.container.image.id) }

                /// `container.image.name` **UNSTABLE**: Name of the image the container was built on.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `gcr.io/opentelemetry/operator`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.container.image.name) }

                /// `container.image.repo_digests` **UNSTABLE**: Repo digests of the container image as provided by the container runtime.
                ///
                /// - Stability: development
                /// - Type: stringArray
                ///
                /// [Docker](https://docs.docker.com/engine/api/v1.43/#tag/Image/operation/ImageInspect) and [CRI](https://github.com/kubernetes/cri-api/blob/c75ef5b473bbe2d0a4fc92f82235efd665ea8e9f/pkg/apis/runtime/v1/api.proto#L1237-L1238) report those under the `RepoDigests` field.
                public var repoDigests: SpanAttributeKey<[String]> {
                    .init(name: OTelAttribute.container.image.repoDigests)
                }

                /// `container.image.tags` **UNSTABLE**: Container image tags. An example can be found in [Docker Image Inspect](https://docs.docker.com/engine/api/v1.43/#tag/Image/operation/ImageInspect). Should be only the `<tag>` section of the full name for example from `registry.example.com/my-org/my-image:<tag>`.
                ///
                /// - Stability: development
                /// - Type: stringArray
                public var tags: SpanAttributeKey<[String]> { .init(name: OTelAttribute.container.image.tags) }
            }
        }

        /// `container.runtime` namespace
        public var runtime: RuntimeAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct RuntimeAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `container.runtime.description` **UNSTABLE**: A description about the runtime which could include, for example details about the CRI/API version being used or other customisations.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `docker://19.3.1 - CRI: 1.22.0`
                public var description: SpanAttributeKey<String> {
                    .init(name: OTelAttribute.container.runtime.description)
                }

                /// `container.runtime.name` **UNSTABLE**: The container runtime managing this container.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `docker`
                ///     - `containerd`
                ///     - `rkt`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.container.runtime.name) }

                /// `container.runtime.version` **UNSTABLE**: The version of the runtime of this process, as returned by the runtime without modification.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `1.0.0`
                public var version: SpanAttributeKey<String> { .init(name: OTelAttribute.container.runtime.version) }
            }
        }
    }
    #endif
}

#endif
