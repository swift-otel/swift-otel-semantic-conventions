// DO NOT EDIT. This file is generated automatically. See README for details.

#if Tracing

import Tracing

extension SpanAttributes {
    /// `signalr` namespace
    public var signalr: SignalrAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct SignalrAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes

        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `signalr.transport`: [SignalR transport type](https://github.com/dotnet/aspnetcore/blob/main/src/SignalR/docs/specs/TransportProtocols.md)
            ///
            /// - Stability: stable
            ///
            /// - Type: enum
            ///     - `server_sent_events`: ServerSentEvents protocol
            ///     - `long_polling`: LongPolling protocol
            ///     - `web_sockets`: WebSockets protocol
            ///
            /// - Examples:
            ///     - `web_sockets`
            ///     - `long_polling`
            public var transport: Self.Key<TransportEnum> { .init(name: OTelAttribute.signalr.transport) }

            public struct TransportEnum: SpanAttributeConvertible, Sendable {
                private let rawValue: String
                /// `server_sent_events`: ServerSentEvents protocol
                public static let serverSentEvents = Self.init(rawValue: "server_sent_events")
                /// `long_polling`: LongPolling protocol
                public static let longPolling = Self.init(rawValue: "long_polling")
                /// `web_sockets`: WebSockets protocol
                public static let webSockets = Self.init(rawValue: "web_sockets")
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    .string(self.rawValue)
                }
            }
        }

        /// `signalr.connection` namespace
        public var connection: ConnectionAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ConnectionAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `signalr.connection.status`: SignalR HTTP connection closure status.
                ///
                /// - Stability: stable
                ///
                /// - Type: enum
                ///     - `normal_closure`: The connection was closed normally.
                ///     - `timeout`: The connection was closed due to a timeout.
                ///     - `app_shutdown`: The connection was closed because the app is shutting down.
                ///
                /// - Examples:
                ///     - `app_shutdown`
                ///     - `timeout`
                public var status: Self.Key<StatusEnum> { .init(name: OTelAttribute.signalr.connection.status) }

                public struct StatusEnum: SpanAttributeConvertible, Sendable {
                    private let rawValue: String
                    /// `normal_closure`: The connection was closed normally.
                    public static let normalClosure = Self.init(rawValue: "normal_closure")
                    /// `timeout`: The connection was closed due to a timeout.
                    public static let timeout = Self.init(rawValue: "timeout")
                    /// `app_shutdown`: The connection was closed because the app is shutting down.
                    public static let appShutdown = Self.init(rawValue: "app_shutdown")
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
                    }
                }
            }
        }
    }
}

#endif
