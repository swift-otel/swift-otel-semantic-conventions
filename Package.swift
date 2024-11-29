// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "swift-otel-semantic-conventions",
    products: [
        .library(name: "OTelSemanticConventions", targets: ["OTelHTTPTracingConventions"]),
        .library(name: "OTelSemanticMetricsConventions", targets: ["OTelHTTPMetricsConventions"]),
        .library(name: "OTelSemanticTracingConventions", targets: ["OTelHTTPTracingConventions"]),
        .library(
            name: "OTelHTTPConventions",
            targets: ["OTelHTTPMetricsConventions", "OTelHTTPTracingConventions"]
        ),
        .library(name: "OTelHTTPMetricsConventions", targets: ["OTelHTTPMetricsConventions"]),
        .library(name: "OTelHTTPTracingConventions", targets: ["OTelHTTPTracingConventions"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-metrics.git", from: "2.0.0"),
        .package(url: "https://github.com/apple/swift-distributed-tracing.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "OTelHTTPMetricsConventions",
            dependencies: [
                .product(name: "CoreMetrics", package: "swift-metrics"),
                .target(name: "OTelMetricsConventionsCore"),
            ]
        ),
        .target(
            name: "OTelHTTPTracingConventions",
            dependencies: [
                .product(name: "Tracing", package: "swift-distributed-tracing"),
            ]
        ),
        .testTarget(
            name: "OTelHTTPConventionsTests",
            dependencies: [
                .product(name: "Metrics", package: "swift-metrics"),
                .product(name: "Tracing", package: "swift-distributed-tracing"),
                .target(name: "OTelHTTPMetricsConventions"),
                .target(name: "OTelHTTPTracingConventions"),
                .target(name: "OTelMetricsConventionsTestSupport"),
            ]
        ),

        .target(name: "OTelMetricsConventionsCore"),
        .target(name: "OTelMetricsConventionsTestSupport"),
    ]
)
