// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MagicImages",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "MagicImages",
            targets: ["MagicImages"]
        )
    ],
    targets: [
        .target(
            name: "MagicImages",
            dependencies: []
        ),
        .testTarget(
            name: "MagicImagesTests",
            dependencies: ["MagicImages"]
        )
    ]
)
