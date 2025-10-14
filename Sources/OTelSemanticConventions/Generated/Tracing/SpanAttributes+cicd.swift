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
    /// `cicd` namespace
    public var cicd: CicdAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct CicdAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
        }

        /// `cicd.pipeline` namespace
        public var pipeline: PipelineAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct PipelineAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `cicd.pipeline.name` **UNSTABLE**: The human readable name of the pipeline within a CI/CD system.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `Build and Test`
                ///     - `Lint`
                ///     - `Deploy Go Project`
                ///     - `deploy_to_environment`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.cicd.pipeline.name) }

                /// `cicd.pipeline.result` **UNSTABLE**: The result of a pipeline run.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `success`: The pipeline run finished successfully.
                ///     - `failure`: The pipeline run did not finish successfully, eg. due to a compile error or a failing test. Such failures are usually detected by non-zero exit codes of the tools executed in the pipeline run.
                ///     - `error`: The pipeline run failed due to an error in the CICD system, eg. due to the worker being killed.
                ///     - `timeout`: A timeout caused the pipeline run to be interrupted.
                ///     - `cancellation`: The pipeline run was cancelled, eg. by a user manually cancelling the pipeline run.
                ///     - `skip`: The pipeline run was skipped, eg. due to a precondition not being met.
                /// - Examples:
                ///     - `success`
                ///     - `failure`
                ///     - `timeout`
                ///     - `skipped`
                public var result: SpanAttributeKey<ResultEnum> { .init(name: OTelAttribute.cicd.pipeline.result) }

                public struct ResultEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                    public let rawValue: String
                    public init(rawValue: String) {
                        self.rawValue = rawValue
                    }
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
                    }
                }
            }

            /// `cicd.pipeline.action` namespace
            public var action: ActionAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct ActionAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `cicd.pipeline.action.name` **UNSTABLE**: The kind of action a pipeline run is performing.
                    ///
                    /// - Stability: development
                    /// - Type: enum
                    ///     - `BUILD`: The pipeline run is executing a build.
                    ///     - `RUN`: The pipeline run is executing.
                    ///     - `SYNC`: The pipeline run is executing a sync.
                    /// - Examples:
                    ///     - `BUILD`
                    ///     - `RUN`
                    ///     - `SYNC`
                    public var name: SpanAttributeKey<NameEnum> { .init(name: OTelAttribute.cicd.pipeline.action.name) }

                    public struct NameEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
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

            /// `cicd.pipeline.run` namespace
            public var run: RunAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct RunAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `cicd.pipeline.run.id` **UNSTABLE**: The unique identifier of a pipeline run within a CI/CD system.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `120912`
                    public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.cicd.pipeline.run.id) }

                    /// `cicd.pipeline.run.state` **UNSTABLE**: The pipeline run goes through these states during its lifecycle.
                    ///
                    /// - Stability: development
                    /// - Type: enum
                    ///     - `pending`: The run pending state spans from the event triggering the pipeline run until the execution of the run starts (eg. time spent in a queue, provisioning agents, creating run resources).
                    ///     - `executing`: The executing state spans the execution of any run tasks (eg. build, test).
                    ///     - `finalizing`: The finalizing state spans from when the run has finished executing (eg. cleanup of run resources).
                    /// - Examples:
                    ///     - `pending`
                    ///     - `executing`
                    ///     - `finalizing`
                    public var state: SpanAttributeKey<StateEnum> { .init(name: OTelAttribute.cicd.pipeline.run.state) }

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

                /// `cicd.pipeline.run.url` namespace
                public var url: UrlAttributes {
                    get {
                        .init(attributes: self.attributes)
                    }
                    set {
                        self.attributes = newValue.attributes
                    }
                }

                @dynamicMemberLookup
                public struct UrlAttributes: SpanAttributeNamespace {
                    public var attributes: Tracing.SpanAttributes

                    public init(attributes: Tracing.SpanAttributes) {
                        self.attributes = attributes
                    }

                    public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                        public init() {}

                        /// `cicd.pipeline.run.url.full` **UNSTABLE**: The [URL](https://wikipedia.org/wiki/URL) of the pipeline run, providing the complete address in order to locate and identify the pipeline run.
                        ///
                        /// - Stability: development
                        /// - Type: string
                        /// - Example: `https://github.com/open-telemetry/semantic-conventions/actions/runs/9753949763?pr=1075`
                        public var full: SpanAttributeKey<String> {
                            .init(name: OTelAttribute.cicd.pipeline.run.url.full)
                        }
                    }
                }
            }

            /// `cicd.pipeline.task` namespace
            public var task: TaskAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct TaskAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `cicd.pipeline.task.name` **UNSTABLE**: The human readable name of a task within a pipeline. Task here most closely aligns with a [computing process](https://wikipedia.org/wiki/Pipeline_(computing)) in a pipeline. Other terms for tasks include commands, steps, and procedures.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Examples:
                    ///     - `Run GoLang Linter`
                    ///     - `Go Build`
                    ///     - `go-test`
                    ///     - `deploy_binary`
                    public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.cicd.pipeline.task.name) }

                    /// `cicd.pipeline.task.type` **UNSTABLE**: The type of the task within a pipeline.
                    ///
                    /// - Stability: development
                    /// - Type: enum
                    ///     - `build`: build
                    ///     - `test`: test
                    ///     - `deploy`: deploy
                    /// - Examples:
                    ///     - `build`
                    ///     - `test`
                    ///     - `deploy`
                    public var `type`: SpanAttributeKey<TypeEnum> {
                        .init(name: OTelAttribute.cicd.pipeline.task.`type`)
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

                /// `cicd.pipeline.task.run` namespace
                public var run: RunAttributes {
                    get {
                        .init(attributes: self.attributes)
                    }
                    set {
                        self.attributes = newValue.attributes
                    }
                }

                @dynamicMemberLookup
                public struct RunAttributes: SpanAttributeNamespace {
                    public var attributes: Tracing.SpanAttributes

                    public init(attributes: Tracing.SpanAttributes) {
                        self.attributes = attributes
                    }

                    public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                        public init() {}

                        /// `cicd.pipeline.task.run.id` **UNSTABLE**: The unique identifier of a task run within a pipeline.
                        ///
                        /// - Stability: development
                        /// - Type: string
                        /// - Example: `12097`
                        public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.cicd.pipeline.task.run.id) }

                        /// `cicd.pipeline.task.run.result` **UNSTABLE**: The result of a task run.
                        ///
                        /// - Stability: development
                        /// - Type: enum
                        ///     - `success`: The task run finished successfully.
                        ///     - `failure`: The task run did not finish successfully, eg. due to a compile error or a failing test. Such failures are usually detected by non-zero exit codes of the tools executed in the task run.
                        ///     - `error`: The task run failed due to an error in the CICD system, eg. due to the worker being killed.
                        ///     - `timeout`: A timeout caused the task run to be interrupted.
                        ///     - `cancellation`: The task run was cancelled, eg. by a user manually cancelling the task run.
                        ///     - `skip`: The task run was skipped, eg. due to a precondition not being met.
                        /// - Examples:
                        ///     - `success`
                        ///     - `failure`
                        ///     - `timeout`
                        ///     - `skipped`
                        public var result: SpanAttributeKey<ResultEnum> {
                            .init(name: OTelAttribute.cicd.pipeline.task.run.result)
                        }

                        public struct ResultEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                            public let rawValue: String
                            public init(rawValue: String) {
                                self.rawValue = rawValue
                            }
                            public func toSpanAttribute() -> Tracing.SpanAttribute {
                                .string(self.rawValue)
                            }
                        }
                    }

                    /// `cicd.pipeline.task.run.url` namespace
                    public var url: UrlAttributes {
                        get {
                            .init(attributes: self.attributes)
                        }
                        set {
                            self.attributes = newValue.attributes
                        }
                    }

                    @dynamicMemberLookup
                    public struct UrlAttributes: SpanAttributeNamespace {
                        public var attributes: Tracing.SpanAttributes

                        public init(attributes: Tracing.SpanAttributes) {
                            self.attributes = attributes
                        }

                        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                            public init() {}

                            /// `cicd.pipeline.task.run.url.full` **UNSTABLE**: The [URL](https://wikipedia.org/wiki/URL) of the pipeline task run, providing the complete address in order to locate and identify the pipeline task run.
                            ///
                            /// - Stability: development
                            /// - Type: string
                            /// - Example: `https://github.com/open-telemetry/semantic-conventions/actions/runs/9753949763/job/26920038674?pr=1075`
                            public var full: SpanAttributeKey<String> {
                                .init(name: OTelAttribute.cicd.pipeline.task.run.url.full)
                            }
                        }
                    }
                }
            }
        }

        /// `cicd.system` namespace
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

                /// `cicd.system.component` **UNSTABLE**: The name of a component of the CICD system.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `controller`
                ///     - `scheduler`
                ///     - `agent`
                public var component: SpanAttributeKey<String> { .init(name: OTelAttribute.cicd.system.component) }
            }
        }

        /// `cicd.worker` namespace
        public var worker: WorkerAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct WorkerAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `cicd.worker.id` **UNSTABLE**: The unique identifier of a worker within a CICD system.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `abc123`
                ///     - `10.0.1.2`
                ///     - `controller`
                public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.cicd.worker.id) }

                /// `cicd.worker.name` **UNSTABLE**: The name of a worker within a CICD system.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `agent-abc`
                ///     - `controller`
                ///     - `Ubuntu LTS`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.cicd.worker.name) }

                /// `cicd.worker.state` **UNSTABLE**: The state of a CICD worker / agent.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `available`: The worker is not performing work for the CICD system. It is available to the CICD system to perform work on (online / idle).
                ///     - `busy`: The worker is performing work for the CICD system.
                ///     - `offline`: The worker is not available to the CICD system (disconnected / down).
                /// - Examples:
                ///     - `idle`
                ///     - `busy`
                ///     - `down`
                public var state: SpanAttributeKey<StateEnum> { .init(name: OTelAttribute.cicd.worker.state) }

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

            /// `cicd.worker.url` namespace
            public var url: UrlAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct UrlAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `cicd.worker.url.full` **UNSTABLE**: The [URL](https://wikipedia.org/wiki/URL) of the worker, providing the complete address in order to locate and identify the worker.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `https://cicd.example.org/worker/abc123`
                    public var full: SpanAttributeKey<String> { .init(name: OTelAttribute.cicd.worker.url.full) }
                }
            }
        }
    }
    #endif
}

#endif
