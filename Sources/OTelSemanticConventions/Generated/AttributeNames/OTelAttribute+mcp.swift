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
    /// `mcp` namespace
    public enum mcp {
        /// `mcp.method` namespace
        public enum method {
            /// `mcp.method.name` **UNSTABLE**: The name of the request or notification method.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `notifications/cancelled`: Notification cancelling a previously-issued request.
            ///     - `initialize`: Request to initialize the MCP client.
            ///     - `notifications/initialized`: Notification indicating that the MCP client has been initialized.
            ///     - `notifications/progress`: Notification indicating the progress for a long-running operation.
            ///     - `ping`: Request to check that the other party is still alive.
            ///     - `resources/list`: Request to list resources available on server.
            ///     - `resources/templates/list`: Request to list resource templates available on server.
            ///     - `resources/read`: Request to read a resource.
            ///     - `notifications/resources/list_changed`: Notification indicating that the list of resources has changed.
            ///     - `resources/subscribe`: Request to subscribe to a resource.
            ///     - `resources/unsubscribe`: Request to unsubscribe from resource updates.
            ///     - `notifications/resources/updated`: Notification indicating that a resource has been updated.
            ///     - `prompts/list`: Request to list prompts available on server.
            ///     - `prompts/get`: Request to get a prompt.
            ///     - `notifications/prompts/list_changed`: Notification indicating that the list of prompts has changed.
            ///     - `tools/list`: Request to list tools available on server.
            ///     - `tools/call`: Request to call a tool.
            ///     - `notifications/tools/list_changed`: Notification indicating that the list of tools has changed.
            ///     - `logging/setLevel`: Request to set the logging level.
            ///     - `notifications/message`: Notification indicating that a message has been received.
            ///     - `sampling/createMessage`: Request to create a sampling message.
            ///     - `completion/complete`: Request to complete a prompt.
            ///     - `roots/list`: Request to list roots available on server.
            ///     - `notifications/roots/list_changed`: Notification indicating that the list of roots has changed.
            ///     - `elicitation/create`: Request from the server to elicit additional information from the user via the client
            public static let name = "mcp.method.name"
        }

        /// `mcp.protocol` namespace
        public enum `protocol` {
            /// `mcp.protocol.version` **UNSTABLE**: The [version](https://modelcontextprotocol.io/specification/versioning) of the Model Context Protocol used.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `2025-06-18`
            public static let version = "mcp.protocol.version"
        }

        /// `mcp.resource` namespace
        public enum resource {
            /// `mcp.resource.uri` **UNSTABLE**: The value of the resource uri.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `postgres://database/customers/schema`
            ///     - `file:///home/user/documents/report.pdf`
            ///
            /// This is a URI of the resource provided in the following requests or notifications: `resources/read`, `resources/subscribe`, `resources/unsubscribe`, or `notifications/resources/updated`.
            public static let uri = "mcp.resource.uri"
        }

        /// `mcp.session` namespace
        public enum session {
            /// `mcp.session.id` **UNSTABLE**: Identifies [MCP session](https://modelcontextprotocol.io/specification/2025-06-18/basic/transports#session-management).
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `191c4850af6c49e08843a3f6c80e5046`
            public static let id = "mcp.session.id"
        }
    }
    #endif
}
