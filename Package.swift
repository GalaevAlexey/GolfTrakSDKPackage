// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GolfTrakSDKPackage",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "GolfTrakSDKPackage",
            targets: ["GolfTrakSDKPackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/yeatse/opencv-spm/", from: "4.10.0"),
    ],
    targets: [
        .target(
            name: "GolfTrakSDKPackage",
            dependencies: [
                .target(name: "MyFramework"),
                .product(name: "OpenCV", package: "opencv-spm"),
            ]),
        .binaryTarget(
            name: "MyFramework",
            path: "./Sources/MyFramework.xcframework")
    ]
)
