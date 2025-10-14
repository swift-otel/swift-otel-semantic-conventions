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
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `otel.status_code`: Name of the code, either "OK" or "ERROR". MUST NOT be set if the status code is UNSET.
            ///
            /// - Stability: stable
            /// - Type: enum
            ///     - `OK`: The operation has been validated by an Application developer or Operator to have completed successfully.
            ///     - `ERROR`: The operation contains an error.
            public var statusCode: SpanAttributeKey<StatusCodeEnum> { .init(name: OTelAttribute.otel.statusCode) }

            public struct StatusCodeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                public let rawValue: String
                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
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
            /// - Type: string
            /// - Example: `resource not found`
            public var statusDescription: SpanAttributeKey<String> { .init(name: OTelAttribute.otel.statusDescription) }
        }

        #if Experimental
        /// `otel.component` namespace
        public var component: ComponentAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct ComponentAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `otel.component.name` **UNSTABLE**: A name uniquely identifying the instance of the OpenTelemetry component within its containing SDK instance.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `otlp_grpc_span_exporter/0`
                ///     - `custom-name`
                ///
                /// Implementations SHOULD ensure a low cardinality for this attribute, even across application or SDK restarts.
                /// E.g. implementations MUST NOT use UUIDs as values for this attribute.
                ///
                /// Implementations MAY achieve these goals by following a `<otel.component.type>/<instance-counter>` pattern, e.g. `batching_span_processor/0`.
                /// Hereby `otel.component.type` refers to the corresponding attribute value of the component.
                ///
                /// The value of `instance-counter` MAY be automatically assigned by the component and uniqueness within the enclosing SDK instance MUST be guaranteed.
                /// For example, `<instance-counter>` MAY be implemented by using a monotonically increasing counter (starting with `0`), which is incremented every time an
                /// instance of the given component type is started.
                ///
                /// With this implementation, for example the first Batching Span Processor would have `batching_span_processor/0`
                /// as `otel.component.name`, the second one `batching_span_processor/1` and so on.
                /// These values will therefore be reused in the case of an application restart.
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.otel.component.name) }

                /// `otel.component.type` **UNSTABLE**: A name identifying the type of the OpenTelemetry component.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `batching_span_processor`: The builtin SDK batching span processor
                ///     - `simple_span_processor`: The builtin SDK simple span processor
                ///     - `batching_log_processor`: The builtin SDK batching log record processor
                ///     - `simple_log_processor`: The builtin SDK simple log record processor
                ///     - `otlp_grpc_span_exporter`: OTLP span exporter over gRPC with protobuf serialization
                ///     - `otlp_http_span_exporter`: OTLP span exporter over HTTP with protobuf serialization
                ///     - `otlp_http_json_span_exporter`: OTLP span exporter over HTTP with JSON serialization
                ///     - `zipkin_http_span_exporter`: Zipkin span exporter over HTTP
                ///     - `otlp_grpc_log_exporter`: OTLP log record exporter over gRPC with protobuf serialization
                ///     - `otlp_http_log_exporter`: OTLP log record exporter over HTTP with protobuf serialization
                ///     - `otlp_http_json_log_exporter`: OTLP log record exporter over HTTP with JSON serialization
                ///     - `periodic_metric_reader`: The builtin SDK periodically exporting metric reader
                ///     - `otlp_grpc_metric_exporter`: OTLP metric exporter over gRPC with protobuf serialization
                ///     - `otlp_http_metric_exporter`: OTLP metric exporter over HTTP with protobuf serialization
                ///     - `otlp_http_json_metric_exporter`: OTLP metric exporter over HTTP with JSON serialization
                ///     - `prometheus_http_text_metric_exporter`: Prometheus metric exporter over HTTP with the default text-based format
                /// - Examples:
                ///     - `batching_span_processor`
                ///     - `com.example.MySpanExporter`
                ///
                /// If none of the standardized values apply, implementations SHOULD use the language-defined name of the type.
                /// E.g. for Java the fully qualified classname SHOULD be used in this case.
                public var `type`: SpanAttributeKey<TypeEnum> { .init(name: OTelAttribute.otel.component.`type`) }

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
        #endif

        #if Experimental
        /// `otel.library` namespace
        public var library: LibraryAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct LibraryAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `otel.library.name` **UNSTABLE**: Deprecated. Use the `otel.scope.name` attribute
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `io.opentelemetry.contrib.mongodb`
                @available(*, deprecated, renamed: "SpanAttributes.otel.scope.name")
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.otel.library.name) }

                /// `otel.library.version` **UNSTABLE**: Deprecated. Use the `otel.scope.version` attribute.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `1.0.0`
                @available(*, deprecated, renamed: "SpanAttributes.otel.scope.version")
                public var version: SpanAttributeKey<String> { .init(name: OTelAttribute.otel.library.version) }
            }
        }
        #endif

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
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `otel.scope.name`: The name of the instrumentation scope - (`InstrumentationScope.Name` in OTLP).
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Example: `io.opentelemetry.contrib.mongodb`
                public var name: SpanAttributeKey<String> { .init(name: OTelAttribute.otel.scope.name) }

                #if Experimental
                /// `otel.scope.schema_url` **UNSTABLE**: The schema URL of the instrumentation scope.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `https://opentelemetry.io/schemas/1.31.0`
                public var schemaUrl: SpanAttributeKey<String> { .init(name: OTelAttribute.otel.scope.schemaUrl) }
                #endif

                /// `otel.scope.version`: The version of the instrumentation scope - (`InstrumentationScope.Version` in OTLP).
                ///
                /// - Stability: stable
                /// - Type: string
                /// - Example: `1.0.0`
                public var version: SpanAttributeKey<String> { .init(name: OTelAttribute.otel.scope.version) }
            }
        }

        #if Experimental
        /// `otel.span` namespace
        public var span: SpanAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct SpanAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `otel.span.sampling_result` **UNSTABLE**: The result value of the sampler for this span
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `DROP`: The span is not sampled and not recording
                ///     - `RECORD_ONLY`: The span is not sampled, but recording
                ///     - `RECORD_AND_SAMPLE`: The span is sampled and recording
                public var samplingResult: SpanAttributeKey<SamplingResultEnum> {
                    .init(name: OTelAttribute.otel.span.samplingResult)
                }

                public struct SamplingResultEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                    public let rawValue: String
                    public init(rawValue: String) {
                        self.rawValue = rawValue
                    }
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
                    }
                }
            }

            /// `otel.span.parent` namespace
            public var parent: ParentAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct ParentAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `otel.span.parent.origin` **UNSTABLE**: Determines whether the span has a parent span, and if so, [whether it is a remote parent](https://opentelemetry.io/docs/specs/otel/trace/api/#isremote)
                    ///
                    /// - Stability: development
                    /// - Type: enum
                    ///     - `none`: The span does not have a parent, it is a root span
                    ///     - `local`: The span has a parent and the parent's span context [isRemote()](https://opentelemetry.io/docs/specs/otel/trace/api/#isremote) is false
                    ///     - `remote`: The span has a parent and the parent's span context [isRemote()](https://opentelemetry.io/docs/specs/otel/trace/api/#isremote) is true
                    public var origin: SpanAttributeKey<OriginEnum> {
                        .init(name: OTelAttribute.otel.span.parent.origin)
                    }

                    public struct OriginEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
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
}

#endif
