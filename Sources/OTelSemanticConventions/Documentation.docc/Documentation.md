# ``OTelSemanticConventions``

OpenTelemetry semantic conventions for Swift.

@Metadata {
    @DisplayName("OTel Semantic Conventions")
    @PageColor(orange)
    @Available(Swift, introduced: 6.1)
}

@Options {
    @TopicsVisualStyle(hidden)
}


## Client Attributes

These attributes may be used to describe the client in a connection-based network interaction where there is one side that initiates the connection (the client is the side that initiates the connection). This covers all TCP network interactions since TCP is connection-based and one side initiates the connection (an exception is made for peer-to-peer communication over TCP where the "user-facing" surface of the protocol / API doesn't expose a clear notion of client and server). This also covers UDP network interactions where one side initiates the interaction, e.g. QUIC (HTTP/3) and DNS.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/ClientAttributes/NestedSpanAttributes/address``
            - ``Tracing/SpanAttributes/ClientAttributes/NestedSpanAttributes/port``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/client/address``
            - ``OTelAttribute/client/port``
        }
    }
}

## Code Attributes

These attributes provide context about source code

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/CodeAttributes/ColumnAttributes/NestedSpanAttributes/number``
            - ``Tracing/SpanAttributes/CodeAttributes/FileAttributes/NestedSpanAttributes/path``
            - ``Tracing/SpanAttributes/CodeAttributes/FunctionAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/CodeAttributes/LineAttributes/NestedSpanAttributes/number``
            - ``Tracing/SpanAttributes/CodeAttributes/NestedSpanAttributes/stacktrace``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/code/column/number``
            - ``OTelAttribute/code/file/path``
            - ``OTelAttribute/code/function/name``
            - ``OTelAttribute/code/line/number``
            - ``OTelAttribute/code/stacktrace``
        }
    }
}

## General Database Attributes

This group defines the attributes used to describe telemetry in the context of databases.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/DbAttributes/CollectionAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/DbAttributes/NestedSpanAttributes/namespace``
            - ``Tracing/SpanAttributes/DbAttributes/OperationAttributes/BatchAttributes/NestedSpanAttributes/size``
            - ``Tracing/SpanAttributes/DbAttributes/OperationAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/DbAttributes/QueryAttributes/NestedSpanAttributes/summary``
            - ``Tracing/SpanAttributes/DbAttributes/QueryAttributes/NestedSpanAttributes/text``
            - ``Tracing/SpanAttributes/DbAttributes/ResponseAttributes/NestedSpanAttributes/statusCode``
            - ``Tracing/SpanAttributes/DbAttributes/StoredProcedureAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/DbAttributes/SystemAttributes/NestedSpanAttributes/name``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/db/collection/name``
            - ``OTelAttribute/db/namespace``
            - ``OTelAttribute/db/operation/batch/size``
            - ``OTelAttribute/db/operation/name``
            - ``OTelAttribute/db/query/summary``
            - ``OTelAttribute/db/query/text``
            - ``OTelAttribute/db/response/statusCode``
            - ``OTelAttribute/db/storedProcedure/name``
            - ``OTelAttribute/db/system/name``
        }
    }
}

## Error Attributes

This document defines the shared attributes used to report an error.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/ErrorAttributes/NestedSpanAttributes/type``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/error/type``
        }
    }
}

## Exception Attributes

This document defines the shared attributes used to report a single exception associated with a span or log.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/ExceptionAttributes/NestedSpanAttributes/message``
            - ``Tracing/SpanAttributes/ExceptionAttributes/NestedSpanAttributes/stacktrace``
            - ``Tracing/SpanAttributes/ExceptionAttributes/NestedSpanAttributes/type``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/exception/message``
            - ``OTelAttribute/exception/stacktrace``
            - ``OTelAttribute/exception/type``
        }
    }
}

## Deprecated Exception Attributes

Deprecated exception attributes.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/ExceptionAttributes/NestedSpanAttributes/escaped``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/exception/escaped``
        }
    }
}

## HTTP Attributes

This document defines semantic convention attributes in the HTTP namespace.
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/HttpAttributes/RequestAttributes/header``
            - ``Tracing/SpanAttributes/HttpAttributes/RequestAttributes/NestedSpanAttributes/method``
            - ``Tracing/SpanAttributes/HttpAttributes/RequestAttributes/NestedSpanAttributes/methodOriginal``
            - ``Tracing/SpanAttributes/HttpAttributes/RequestAttributes/NestedSpanAttributes/resendCount``
            - ``Tracing/SpanAttributes/HttpAttributes/ResponseAttributes/header``
            - ``Tracing/SpanAttributes/HttpAttributes/ResponseAttributes/NestedSpanAttributes/statusCode``
            - ``Tracing/SpanAttributes/HttpAttributes/NestedSpanAttributes/route``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/http/request/header``
            - ``OTelAttribute/http/request/method``
            - ``OTelAttribute/http/request/methodOriginal``
            - ``OTelAttribute/http/request/resendCount``
            - ``OTelAttribute/http/response/header``
            - ``OTelAttribute/http/response/statusCode``
            - ``OTelAttribute/http/route``
        }
    }
}

## Network Attributes

These attributes may be used for any network related operation.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/NetworkAttributes/LocalAttributes/NestedSpanAttributes/address``
            - ``Tracing/SpanAttributes/NetworkAttributes/LocalAttributes/NestedSpanAttributes/port``
            - ``Tracing/SpanAttributes/NetworkAttributes/PeerAttributes/NestedSpanAttributes/address``
            - ``Tracing/SpanAttributes/NetworkAttributes/PeerAttributes/NestedSpanAttributes/port``
            - ``Tracing/SpanAttributes/NetworkAttributes/ProtocolAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/NetworkAttributes/ProtocolAttributes/NestedSpanAttributes/version``
            - ``Tracing/SpanAttributes/NetworkAttributes/NestedSpanAttributes/transport``
            - ``Tracing/SpanAttributes/NetworkAttributes/NestedSpanAttributes/type``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/network/local/address``
            - ``OTelAttribute/network/local/port``
            - ``OTelAttribute/network/peer/address``
            - ``OTelAttribute/network/peer/port``
            - ``OTelAttribute/network/protocol/name``
            - ``OTelAttribute/network/protocol/version``
            - ``OTelAttribute/network/transport``
            - ``OTelAttribute/network/type``
        }
    }
}

## OTel Attributes

Attributes reserved for OpenTelemetry
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/OtelAttributes/NestedSpanAttributes/statusCode``
            - ``Tracing/SpanAttributes/OtelAttributes/NestedSpanAttributes/statusDescription``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/otel/statusCode``
            - ``OTelAttribute/otel/statusDescription``
        }
    }
}

## OTel Scope Attributes

Attributes used by non-OTLP exporters to represent OpenTelemetry Scope's concepts.
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/OtelAttributes/ScopeAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/OtelAttributes/ScopeAttributes/NestedSpanAttributes/version``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/otel/scope/name``
            - ``OTelAttribute/otel/scope/version``
        }
    }
}

## Server Attributes

These attributes may be used to describe the server in a connection-based network interaction where there is one side that initiates the connection (the client is the side that initiates the connection). This covers all TCP network interactions since TCP is connection-based and one side initiates the connection (an exception is made for peer-to-peer communication over TCP where the "user-facing" surface of the protocol / API doesn't expose a clear notion of client and server). This also covers UDP network interactions where one side initiates the interaction, e.g. QUIC (HTTP/3) and DNS.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/ServerAttributes/NestedSpanAttributes/address``
            - ``Tracing/SpanAttributes/ServerAttributes/NestedSpanAttributes/port``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/server/address``
            - ``OTelAttribute/server/port``
        }
    }
}

## Service Attributes

A service instance.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/ServiceAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/ServiceAttributes/NestedSpanAttributes/version``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/service/name``
            - ``OTelAttribute/service/version``
        }
    }
}

## Telemetry Attributes

This document defines attributes for telemetry SDK.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/TelemetryAttributes/SdkAttributes/NestedSpanAttributes/language``
            - ``Tracing/SpanAttributes/TelemetryAttributes/SdkAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/TelemetryAttributes/SdkAttributes/NestedSpanAttributes/version``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/telemetry/sdk/language``
            - ``OTelAttribute/telemetry/sdk/name``
            - ``OTelAttribute/telemetry/sdk/version``
        }
    }
}

## URL Attributes

Attributes describing URL.
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/fragment``
            - ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/full``
            - ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/path``
            - ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/query``
            - ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/scheme``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/url/fragment``
            - ``OTelAttribute/url/full``
            - ``OTelAttribute/url/path``
            - ``OTelAttribute/url/query``
            - ``OTelAttribute/url/scheme``
        }
    }
}

## User-agent Attributes

Describes user-agent attributes.
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/UserAgentAttributes/NestedSpanAttributes/original``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/userAgent/original``
        }
    }
}


## Topics

### Client Attributes

- ``Tracing/SpanAttributes/ClientAttributes/NestedSpanAttributes/address``
- ``Tracing/SpanAttributes/ClientAttributes/NestedSpanAttributes/port``
- ``OTelAttribute/client/address``
- ``OTelAttribute/client/port``

### Code Attributes

- ``Tracing/SpanAttributes/CodeAttributes/ColumnAttributes/NestedSpanAttributes/number``
- ``Tracing/SpanAttributes/CodeAttributes/FileAttributes/NestedSpanAttributes/path``
- ``Tracing/SpanAttributes/CodeAttributes/FunctionAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/CodeAttributes/LineAttributes/NestedSpanAttributes/number``
- ``Tracing/SpanAttributes/CodeAttributes/NestedSpanAttributes/stacktrace``
- ``OTelAttribute/code/column/number``
- ``OTelAttribute/code/file/path``
- ``OTelAttribute/code/function/name``
- ``OTelAttribute/code/line/number``
- ``OTelAttribute/code/stacktrace``

### General Database Attributes

- ``Tracing/SpanAttributes/DbAttributes/CollectionAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/DbAttributes/NestedSpanAttributes/namespace``
- ``Tracing/SpanAttributes/DbAttributes/OperationAttributes/BatchAttributes/NestedSpanAttributes/size``
- ``Tracing/SpanAttributes/DbAttributes/OperationAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/DbAttributes/QueryAttributes/NestedSpanAttributes/summary``
- ``Tracing/SpanAttributes/DbAttributes/QueryAttributes/NestedSpanAttributes/text``
- ``Tracing/SpanAttributes/DbAttributes/ResponseAttributes/NestedSpanAttributes/statusCode``
- ``Tracing/SpanAttributes/DbAttributes/StoredProcedureAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/DbAttributes/SystemAttributes/NestedSpanAttributes/name``
- ``OTelAttribute/db/collection/name``
- ``OTelAttribute/db/namespace``
- ``OTelAttribute/db/operation/batch/size``
- ``OTelAttribute/db/operation/name``
- ``OTelAttribute/db/query/summary``
- ``OTelAttribute/db/query/text``
- ``OTelAttribute/db/response/statusCode``
- ``OTelAttribute/db/storedProcedure/name``
- ``OTelAttribute/db/system/name``

### Error Attributes

- ``Tracing/SpanAttributes/ErrorAttributes/NestedSpanAttributes/type``
- ``OTelAttribute/error/type``

### Exception Attributes

- ``Tracing/SpanAttributes/ExceptionAttributes/NestedSpanAttributes/message``
- ``Tracing/SpanAttributes/ExceptionAttributes/NestedSpanAttributes/stacktrace``
- ``Tracing/SpanAttributes/ExceptionAttributes/NestedSpanAttributes/type``
- ``OTelAttribute/exception/message``
- ``OTelAttribute/exception/stacktrace``
- ``OTelAttribute/exception/type``

### Deprecated Exception Attributes

- ``Tracing/SpanAttributes/ExceptionAttributes/NestedSpanAttributes/escaped``
- ``OTelAttribute/exception/escaped``

### HTTP Attributes

- ``Tracing/SpanAttributes/HttpAttributes/RequestAttributes/header``
- ``Tracing/SpanAttributes/HttpAttributes/RequestAttributes/NestedSpanAttributes/method``
- ``Tracing/SpanAttributes/HttpAttributes/RequestAttributes/NestedSpanAttributes/methodOriginal``
- ``Tracing/SpanAttributes/HttpAttributes/RequestAttributes/NestedSpanAttributes/resendCount``
- ``Tracing/SpanAttributes/HttpAttributes/ResponseAttributes/header``
- ``Tracing/SpanAttributes/HttpAttributes/ResponseAttributes/NestedSpanAttributes/statusCode``
- ``Tracing/SpanAttributes/HttpAttributes/NestedSpanAttributes/route``
- ``OTelAttribute/http/request/header``
- ``OTelAttribute/http/request/method``
- ``OTelAttribute/http/request/methodOriginal``
- ``OTelAttribute/http/request/resendCount``
- ``OTelAttribute/http/response/header``
- ``OTelAttribute/http/response/statusCode``
- ``OTelAttribute/http/route``

### Network Attributes

- ``Tracing/SpanAttributes/NetworkAttributes/LocalAttributes/NestedSpanAttributes/address``
- ``Tracing/SpanAttributes/NetworkAttributes/LocalAttributes/NestedSpanAttributes/port``
- ``Tracing/SpanAttributes/NetworkAttributes/PeerAttributes/NestedSpanAttributes/address``
- ``Tracing/SpanAttributes/NetworkAttributes/PeerAttributes/NestedSpanAttributes/port``
- ``Tracing/SpanAttributes/NetworkAttributes/ProtocolAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/NetworkAttributes/ProtocolAttributes/NestedSpanAttributes/version``
- ``Tracing/SpanAttributes/NetworkAttributes/NestedSpanAttributes/transport``
- ``Tracing/SpanAttributes/NetworkAttributes/NestedSpanAttributes/type``
- ``OTelAttribute/network/local/address``
- ``OTelAttribute/network/local/port``
- ``OTelAttribute/network/peer/address``
- ``OTelAttribute/network/peer/port``
- ``OTelAttribute/network/protocol/name``
- ``OTelAttribute/network/protocol/version``
- ``OTelAttribute/network/transport``
- ``OTelAttribute/network/type``

### OTel Attributes

- ``Tracing/SpanAttributes/OtelAttributes/NestedSpanAttributes/statusCode``
- ``Tracing/SpanAttributes/OtelAttributes/NestedSpanAttributes/statusDescription``
- ``OTelAttribute/otel/statusCode``
- ``OTelAttribute/otel/statusDescription``

### OTel Scope Attributes

- ``Tracing/SpanAttributes/OtelAttributes/ScopeAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/OtelAttributes/ScopeAttributes/NestedSpanAttributes/version``
- ``OTelAttribute/otel/scope/name``
- ``OTelAttribute/otel/scope/version``

### Server Attributes

- ``Tracing/SpanAttributes/ServerAttributes/NestedSpanAttributes/address``
- ``Tracing/SpanAttributes/ServerAttributes/NestedSpanAttributes/port``
- ``OTelAttribute/server/address``
- ``OTelAttribute/server/port``

### Service Attributes

- ``Tracing/SpanAttributes/ServiceAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/ServiceAttributes/NestedSpanAttributes/version``
- ``OTelAttribute/service/name``
- ``OTelAttribute/service/version``

### Telemetry Attributes

- ``Tracing/SpanAttributes/TelemetryAttributes/SdkAttributes/NestedSpanAttributes/language``
- ``Tracing/SpanAttributes/TelemetryAttributes/SdkAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/TelemetryAttributes/SdkAttributes/NestedSpanAttributes/version``
- ``OTelAttribute/telemetry/sdk/language``
- ``OTelAttribute/telemetry/sdk/name``
- ``OTelAttribute/telemetry/sdk/version``

### URL Attributes

- ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/fragment``
- ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/full``
- ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/path``
- ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/query``
- ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/scheme``
- ``OTelAttribute/url/fragment``
- ``OTelAttribute/url/full``
- ``OTelAttribute/url/path``
- ``OTelAttribute/url/query``
- ``OTelAttribute/url/scheme``

### User-agent Attributes

- ``Tracing/SpanAttributes/UserAgentAttributes/NestedSpanAttributes/original``
- ``OTelAttribute/userAgent/original``
