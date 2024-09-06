// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NaverMapSDK",
    platforms: [.iOS(.v12)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "NaverMapSDK",
            targets: ["NaverMapSDK"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "NMapsMap",
            path: "./Frameworks/NMapsMap.xcframework"
        ),
        .binaryTarget(
            name: "NMapsGeometry",
            path: "./Frameworks/NMapsGeometry.xcframework"
        ),
        .target(
            name: "NaverMapSDK",
            dependencies: ["NMapsMap", "NMapsGeometry"]),
        .testTarget(
            name: "NaverMapSDKTests",
            dependencies: ["NMapsMap", "NMapsGeometry"]),
    ]
)
