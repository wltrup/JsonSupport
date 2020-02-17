// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JsonSupport",
    products: [
        .library(
            name: "JsonSupport",
            targets: ["JsonSupport"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "JsonSupport",
            dependencies: []),
        .testTarget(
            name: "JsonSupportTests",
            dependencies: ["JsonSupport"]),
    ]
)
