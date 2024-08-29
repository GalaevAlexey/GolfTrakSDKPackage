// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GolfTrakSDKPackage",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "GolfTrakSDKPackage",
            targets: ["GolfTrakCV"]),
    ],
    targets: [
        .binaryTarget(
            name: "GolfTrakCV",
            path: "./Sources/GolfTrakCV.xcframework"
        )
    ]
)
