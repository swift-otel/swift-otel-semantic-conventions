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
    /// `mcp` namespace
    public var mcp: McpAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct McpAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
        }

        /// `mcp.method` namespace
        public var method: MethodAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct MethodAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

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
                public var name: SpanAttributeKey<NameEnum> { .init(name: OTelAttribute.mcp.method.name) }

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

        /// `mcp.protocol` namespace
        public var `protocol`: ProtocolAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ProtocolAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `mcp.protocol.version` **UNSTABLE**: The [version](https://modelcontextprotocol.io/specification/versioning) of the Model Context Protocol used.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `2025-06-18`
                public var version: SpanAttributeKey<String> { .init(name: OTelAttribute.mcp.`protocol`.version) }
            }
        }

        /// `mcp.resource` namespace
        public var resource: ResourceAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ResourceAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `mcp.resource.uri` **UNSTABLE**: The value of the resource uri.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `postgres://database/customers/schema`
                ///     - `file:///home/user/documents/report.pdf`
                ///
                /// This is a URI of the resource provided in the following requests or notifications: `resources/read`, `resources/subscribe`, `resources/unsubscribe`, or `notifications/resources/updated`.
                public var uri: SpanAttributeKey<String> { .init(name: OTelAttribute.mcp.resource.uri) }
            }
        }

        /// `mcp.session` namespace
        public var session: SessionAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct SessionAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `mcp.session.id` **UNSTABLE**: Identifies [MCP session](https://modelcontextprotocol.io/specification/2025-06-18/basic/transports#session-management).
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `191c4850af6c49e08843a3f6c80e5046`
                public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.mcp.session.id) }
            }
        }
    }
    #endif
}

#endif
