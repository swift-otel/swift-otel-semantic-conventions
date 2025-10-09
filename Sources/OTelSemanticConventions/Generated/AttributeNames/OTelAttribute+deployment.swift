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
    /// `deployment` namespace
    public enum deployment {
        /// `deployment.environment`: Deprecated, use `deployment.environment.name` instead.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Examples:
        ///     - `staging`
        ///     - `production`
        @available(*, deprecated, renamed: "OTelAttribute.deployment.environment.name")
        public static let _environment = "deployment.environment"

        /// `deployment.id`: The id of the deployment.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `1208`
        public static let id = "deployment.id"

        /// `deployment.name`: The name of the deployment.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Examples:
        ///     - `deploy my app`
        ///     - `deploy-frontend`
        public static let name = "deployment.name"

        /// `deployment.status`: The status of the deployment.
        ///
        /// - Stability: development
        /// - Type: enum
        ///     - `failed`: failed
        ///     - `succeeded`: succeeded
        public static let status = "deployment.status"

        /// `deployment.environment` namespace
        public enum environment {
            /// `deployment.environment.name`: Name of the [deployment environment](https://wikipedia.org/wiki/Deployment_environment) (aka deployment tier).
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `staging`
            ///     - `production`
            ///
            /// `deployment.environment.name` does not affect the uniqueness constraints defined through
            /// the `service.namespace`, `service.name` and `service.instance.id` resource attributes.
            /// This implies that resources carrying the following attribute combinations MUST be
            /// considered to be identifying the same service:
            ///
            /// - `service.name=frontend`, `deployment.environment.name=production`
            /// - `service.name=frontend`, `deployment.environment.name=staging`.
            public static let name = "deployment.environment.name"
        }
    }
    #endif
}
