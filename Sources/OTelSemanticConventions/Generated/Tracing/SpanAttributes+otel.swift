// DO NOT EDIT. This file is generated automatically. See README for details.

#if Tracing

import Tracing

extension SpanAttributes {
    /// `otel` namespace
    public var otel: OtelAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct OtelAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes

        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `otel.status_code`: Name of the code, either "OK" or "ERROR". MUST NOT be set if the status code is UNSET.
            ///
            /// - Stability: stable
            ///
            /// - Type: enum
            ///     - `OK`: The operation has been validated by an Application developer or Operator to have completed successfully.
            ///     - `ERROR`: The operation contains an error.
            public var statusCode: Self.Key<StatusCodeEnum> { .init(name: OTelAttribute.otel.statusCode) }

            public struct StatusCodeEnum: SpanAttributeConvertible, Sendable {
                private let rawValue: String
                /// `OK`: The operation has been validated by an Application developer or Operator to have completed successfully.
                public static let ok = Self.init(rawValue: "OK")
                /// `ERROR`: The operation contains an error.
                public static let error = Self.init(rawValue: "ERROR")
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    .string(self.rawValue)
                }
            }

            /// `otel.status_description`: Description of the Status if it has a value, otherwise not set.
            ///
            /// - Stability: stable
            ///
            /// - Type: string
            ///
            /// - Example: `resource not found`
            public var statusDescription: Self.Key<String> { .init(name: OTelAttribute.otel.statusDescription) }
        }

        /// `otel.scope` namespace
        public var scope: ScopeAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ScopeAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes

            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `otel.scope.name`: The name of the instrumentation scope - (`InstrumentationScope.Name` in OTLP).
                ///
                /// - Stability: stable
                ///
                /// - Type: string
                ///
                /// - Example: `io.opentelemetry.contrib.mongodb`
                public var name: Self.Key<String> { .init(name: OTelAttribute.otel.scope.name) }

                /// `otel.scope.version`: The version of the instrumentation scope - (`InstrumentationScope.Version` in OTLP).
                ///
                /// - Stability: stable
                ///
                /// - Type: string
                ///
                /// - Example: `1.0.0`
                public var version: Self.Key<String> { .init(name: OTelAttribute.otel.scope.version) }
            }
        }
    }
}

#endif
