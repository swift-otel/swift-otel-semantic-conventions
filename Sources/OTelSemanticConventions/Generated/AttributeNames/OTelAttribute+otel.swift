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
    /// `otel` namespace
    public enum otel {
        /// `otel.status_code`: Name of the code, either "OK" or "ERROR". MUST NOT be set if the status code is UNSET.
        ///
        /// - Stability: stable
        /// - Type: enum
        ///     - `OK`: The operation has been validated by an Application developer or Operator to have completed successfully.
        ///     - `ERROR`: The operation contains an error.
        public static let statusCode = "otel.status_code"

        /// `otel.status_description`: Description of the Status if it has a value, otherwise not set.
        ///
        /// - Stability: stable
        /// - Type: string
        /// - Example: `resource not found`
        public static let statusDescription = "otel.status_description"

        #if Experimental
        /// `otel.component` namespace
        public enum component {
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
            public static let name = "otel.component.name"

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
            public static let `type` = "otel.component.type"
        }
        #endif

        #if Experimental
        /// `otel.library` namespace
        public enum library {
            /// `otel.library.name` **UNSTABLE**: Deprecated. Use the `otel.scope.name` attribute
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `io.opentelemetry.contrib.mongodb`
            @available(*, deprecated, renamed: "OTelAttribute.otel.scope.name")
            public static let name = "otel.library.name"

            /// `otel.library.version` **UNSTABLE**: Deprecated. Use the `otel.scope.version` attribute.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `1.0.0`
            @available(*, deprecated, renamed: "OTelAttribute.otel.scope.version")
            public static let version = "otel.library.version"
        }
        #endif

        /// `otel.scope` namespace
        public enum scope {
            /// `otel.scope.name`: The name of the instrumentation scope - (`InstrumentationScope.Name` in OTLP).
            ///
            /// - Stability: stable
            /// - Type: string
            /// - Example: `io.opentelemetry.contrib.mongodb`
            public static let name = "otel.scope.name"

            #if Experimental
            /// `otel.scope.schema_url` **UNSTABLE**: The schema URL of the instrumentation scope.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `https://opentelemetry.io/schemas/1.31.0`
            public static let schemaUrl = "otel.scope.schema_url"
            #endif

            /// `otel.scope.version`: The version of the instrumentation scope - (`InstrumentationScope.Version` in OTLP).
            ///
            /// - Stability: stable
            /// - Type: string
            /// - Example: `1.0.0`
            public static let version = "otel.scope.version"
        }

        #if Experimental
        /// `otel.span` namespace
        public enum span {
            /// `otel.span.sampling_result` **UNSTABLE**: The result value of the sampler for this span
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `DROP`: The span is not sampled and not recording
            ///     - `RECORD_ONLY`: The span is not sampled, but recording
            ///     - `RECORD_AND_SAMPLE`: The span is sampled and recording
            public static let samplingResult = "otel.span.sampling_result"

            /// `otel.span.parent` namespace
            public enum parent {
                /// `otel.span.parent.origin` **UNSTABLE**: Determines whether the span has a parent span, and if so, [whether it is a remote parent](https://opentelemetry.io/docs/specs/otel/trace/api/#isremote)
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `none`: The span does not have a parent, it is a root span
                ///     - `local`: The span has a parent and the parent's span context [isRemote()](https://opentelemetry.io/docs/specs/otel/trace/api/#isremote) is false
                ///     - `remote`: The span has a parent and the parent's span context [isRemote()](https://opentelemetry.io/docs/specs/otel/trace/api/#isremote) is true
                public static let origin = "otel.span.parent.origin"
            }
        }
        #endif
    }
}
