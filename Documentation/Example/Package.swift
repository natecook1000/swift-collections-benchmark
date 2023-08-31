// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Kalimba",
    platforms: [.macOS(.v11)],
    products: [
        .library(
            name: "Kalimba",
            targets: ["Kalimba"]),
        .executable(name: "kalimba-benchmark", targets: ["kalimba-benchmark"]),
    ],
    dependencies: [
        .package(path: "../../"),
        .package(url: "https://github.com/apple/swift-collections", from: "0.0.1"),
    ],
    targets: [
        .target(
            name: "Kalimba",
            dependencies: [
                .product(name: "Collections", package: "swift-collections"),
            ]),
        .executableTarget(
            name: "kalimba-benchmark",
            dependencies: [
                "Kalimba",
                .product(name: "CollectionsBenchmark", package: "swift-collections-benchmark")
            ]
        ),
    ]
)
