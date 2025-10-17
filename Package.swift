// swift-tools-version:6.1
import PackageDescription

let package = Package(
    name: "swift-otel-semantic-conventions",
    products: [
        .library(name: "OTelSemanticConventions", targets: ["OTelSemanticConventions"])
    ],
    traits: [
        .trait(name: "Tracing"),
        .trait(
            name: "Experimental",
            description:
                "Enables experimental attributes, which haven't been stabilized yet. Using this trait requires pinning to the current minor version."
        ),
        .default(enabledTraits: [
            "Tracing"
        ]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-distributed-tracing.git", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "OTelSemanticConventions",
            dependencies: [
                .product(name: "Tracing", package: "swift-distributed-tracing", condition: .when(traits: ["Tracing"]))
            ]
        ),
        .testTarget(
            name: "OTelSemanticConventionsTests",
            dependencies: [
                .target(name: "OTelSemanticConventions")
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)
