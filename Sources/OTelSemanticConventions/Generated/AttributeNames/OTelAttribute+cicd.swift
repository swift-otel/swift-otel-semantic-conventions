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
    /// `cicd` namespace
    public enum cicd {
        /// `cicd.pipeline` namespace
        public enum pipeline {
            /// `cicd.pipeline.name`: The human readable name of the pipeline within a CI/CD system.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `Build and Test`
            ///     - `Lint`
            ///     - `Deploy Go Project`
            ///     - `deploy_to_environment`
            public static let name = "cicd.pipeline.name"

            /// `cicd.pipeline.result`: The result of a pipeline run.
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
            public static let result = "cicd.pipeline.result"

            /// `cicd.pipeline.action` namespace
            public enum action {
                /// `cicd.pipeline.action.name`: The kind of action a pipeline run is performing.
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
                public static let name = "cicd.pipeline.action.name"
            }

            /// `cicd.pipeline.run` namespace
            public enum run {
                /// `cicd.pipeline.run.id`: The unique identifier of a pipeline run within a CI/CD system.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `120912`
                public static let id = "cicd.pipeline.run.id"

                /// `cicd.pipeline.run.state`: The pipeline run goes through these states during its lifecycle.
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
                public static let state = "cicd.pipeline.run.state"

                /// `cicd.pipeline.run.url` namespace
                public enum url {
                    /// `cicd.pipeline.run.url.full`: The [URL](https://wikipedia.org/wiki/URL) of the pipeline run, providing the complete address in order to locate and identify the pipeline run.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `https://github.com/open-telemetry/semantic-conventions/actions/runs/9753949763?pr=1075`
                    public static let full = "cicd.pipeline.run.url.full"
                }
            }

            /// `cicd.pipeline.task` namespace
            public enum task {
                /// `cicd.pipeline.task.name`: The human readable name of a task within a pipeline. Task here most closely aligns with a [computing process](https://wikipedia.org/wiki/Pipeline_(computing)) in a pipeline. Other terms for tasks include commands, steps, and procedures.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `Run GoLang Linter`
                ///     - `Go Build`
                ///     - `go-test`
                ///     - `deploy_binary`
                public static let name = "cicd.pipeline.task.name"

                /// `cicd.pipeline.task.type`: The type of the task within a pipeline.
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
                public static let `type` = "cicd.pipeline.task.type"

                /// `cicd.pipeline.task.run` namespace
                public enum run {
                    /// `cicd.pipeline.task.run.id`: The unique identifier of a task run within a pipeline.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `12097`
                    public static let id = "cicd.pipeline.task.run.id"

                    /// `cicd.pipeline.task.run.result`: The result of a task run.
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
                    public static let result = "cicd.pipeline.task.run.result"

                    /// `cicd.pipeline.task.run.url` namespace
                    public enum url {
                        /// `cicd.pipeline.task.run.url.full`: The [URL](https://wikipedia.org/wiki/URL) of the pipeline task run, providing the complete address in order to locate and identify the pipeline task run.
                        ///
                        /// - Stability: development
                        /// - Type: string
                        /// - Example: `https://github.com/open-telemetry/semantic-conventions/actions/runs/9753949763/job/26920038674?pr=1075`
                        public static let full = "cicd.pipeline.task.run.url.full"
                    }
                }
            }
        }

        /// `cicd.system` namespace
        public enum system {
            /// `cicd.system.component`: The name of a component of the CICD system.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `controller`
            ///     - `scheduler`
            ///     - `agent`
            public static let component = "cicd.system.component"
        }

        /// `cicd.worker` namespace
        public enum worker {
            /// `cicd.worker.id`: The unique identifier of a worker within a CICD system.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `abc123`
            ///     - `10.0.1.2`
            ///     - `controller`
            public static let id = "cicd.worker.id"

            /// `cicd.worker.name`: The name of a worker within a CICD system.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `agent-abc`
            ///     - `controller`
            ///     - `Ubuntu LTS`
            public static let name = "cicd.worker.name"

            /// `cicd.worker.state`: The state of a CICD worker / agent.
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
            public static let state = "cicd.worker.state"

            /// `cicd.worker.url` namespace
            public enum url {
                /// `cicd.worker.url.full`: The [URL](https://wikipedia.org/wiki/URL) of the worker, providing the complete address in order to locate and identify the worker.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `https://cicd.example.org/worker/abc123`
                public static let full = "cicd.worker.url.full"
            }
        }
    }
    #endif
}
