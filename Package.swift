// swift-tools-version:6.1
import PackageDescription

let package = Package(
    name: "swift-otel-semantic-conventions",
    products: [
        .library(name: "OTelSemanticConventions", targets: ["OTelSemanticConventions"]),
        .library(name: "OTelSpanConventions", targets: ["OTelSpanConventions"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-distributed-tracing.git", from: "1.0.0"),
    ],
    targets: [
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
