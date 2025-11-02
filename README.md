# Swift OTel Semantic Conventions

OpenTelemetry [semantic conventions](https://opentelemetry.io/docs/specs/semconv/) for Swift.

[![Swift Package Index](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fswift-otel%2Fswift-otel-semantic-conventions%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/swift-otel/swift-otel-semantic-conventions)
[![SemConv][semconv-badge]][semconv-url]
[![Unit Test](https://github.com/swift-otel/swift-otel-semantic-conventions/actions/workflows/unit-test.yaml/badge.svg)](https://github.com/swift-otel/swift-otel-semantic-conventions/actions/workflows/unit-test.yaml)

## Overview

This repo contains Swift support for the [OpenTelemetry Semantic Convention Attribute Registry](https://opentelemetry.io/docs/specs/semconv/attributes-registry/).

Using Swift OTel Semantic Conventions has the following benefits:

1. Avoids misspellings or propagation of nonstandard attribute names
2. OpenTelemetry deprecation is automatically marked in Swift
3. Attribute documentation is automatically integrated into code editors

## Usage

### Span Attributes

This package vends type-aware extensions on `SpanAttributes` for each OTel attribute:

```swift
withSpan("showAttributes") { span in
    // Primitive and array types use Swift primitives
    span.attributes.http.response.statusCode = 200
    span.attributes.host.ip = ["192.168.1.140", "fe80::abc2:4a28:737a:609e"]

    // Enum types are presented as static constants in Swift
    span.attributes.http.request.method = .post

    // Template types can be set dynamically
    span.attributes.http.request.header.set("X-Foo", to: ["bar", "baz"])
}
```

#### Opting out of Span Attributes

`SpanAttributes` extensions are included by default. You can opt out by excluding the `Tracing` trait
in your dependency declaration, potentially saving some compilation time:

```swift
let package = Package(
    name: "my-package",
    dependencies: [
        .package(
            url: "https://github.com/swift-otel/swift-otel-semantic-conventions.git",
            from: "1.34.0",
            traits: []
        )
    ]
)
```

### Attribute Names

This package vends each OTel attribute name as a static string property on the `OTelAttribute` type. To use them, simply reference the static properties when creating span attributes or log metadata instead of string literals:

```swift
// Span Attributes
withSpan("showAttributes") { span in
  span.attributes[OTelAttribute.http.request.method] = "POST"
  span.attributes[OTelAttribute.http.response.statusCode] = 200
}

// Logging Metadata
logger[metadataKey: .init(name: OTelAttribute.http.request.method)] = "POST"
logger[metadataKey: .init(name: OTelAttribute.http.response.statusCode)] = "200"
```

### Unstable Attributes

**WARNING: unstable attributes may experience breaking changes on minor version updates of this package!**

[Unstable](https://opentelemetry.io/docs/specs/otel/versioning-and-stability/#semantic-conventions-stability) attributes are available, but are gated behind a non-default `Experimental` trait that must be explicitly included in your `Package.swift`. It is recommended that you use an [`upToNextMinor`](https://developer.apple.com/documentation/swift/range/uptonextminor(from:)) dependency range when including this trait, because minor versions of `swift-otel-semantic-conventions` may include breaking changes to unstable attributes:

```swift
dependencies: [
    .package(
        url: "https://github.com/swift-otel/swift-otel-semantic-conventions.git",
        .upToNextMinor(from: "1.34.0"),
        traits: ["Experimental"]
    )
]
```

## Contributing

### Generation

For details on generation, see the [Generator](./Generator) subdirectory.

OpenTelemetry provides the [Weave semantic convention generation tool](https://github.com/open-telemetry/weaver/blob/main/crates/weaver_forge/README.md).
However, this package uses a Swift generator instead for the following reasons:

- To support the desired API where Swift usage nests namespaces with the `.` notation just like the attributes, a namespace tree must be constructed and traversed. Doing this in the Weaver Jinja templating language is difficult.
- Swift will be more familiar than Jinja templates to users of this package, leading to easier maintenance.

[semconv-badge]: https://img.shields.io/badge/semconv-1.37.0-blue.svg
[semconv-url]: https://github.com/open-telemetry/semantic-conventions.git
