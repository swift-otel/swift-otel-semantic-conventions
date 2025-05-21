// swift-tools-version:6.1
import PackageDescription

let package = Package(
    name: "swift-otel-semantic-conventions",
    products: [
        .library(name: "OTelSemanticMetricsConventions", targets: ["OTelHTTPMetricsConventions"]),
        .library(
            name: "OTelHTTPConventions",
            targets: ["OTelHTTPMetricsConventions"]
        ),
        .library(name: "OTelHTTPMetricsConventions", targets: ["OTelHTTPMetricsConventions"]),
        .library(name: "OTelSemanticConventions", targets: ["OTelSemanticConventions"]),
        .library(name: "OTelSpanConventions", targets: ["OTelSpanConventions"]),
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
        .testTarget(
            name: "OTelHTTPConventionsTests",
            dependencies: [
                .product(name: "Metrics", package: "swift-metrics"),
                .product(name: "Tracing", package: "swift-distributed-tracing"),
                .target(name: "OTelHTTPMetricsConventions"),
                .target(name: "OTelMetricsConventionsTestSupport"),
            ]
        ),

        .target(name: "OTelMetricsConventionsCore"),
        .target(name: "OTelMetricsConventionsTestSupport"),

        .target(name: "OTelSemanticConventions"),
        .target(
            name: "OTelSpanConventions",
            dependencies: [
                .target(name: "OTelSemanticConventions"),
                .product(name: "Tracing", package: "swift-distributed-tracing"),
            ]
        ),
        .testTarget(
            name: "OTelSemanticConventionsTests",
            dependencies: [
                .target(name: "OTelSemanticConventions"),
                .target(name: "OTelSpanConventions"),
            ]
        ),
    ]
)
