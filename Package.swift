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
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.9.1"),
        .package(url: "https://github.com/jdg/MBProgressHUD.git", from: "1.2.0"),
        .package(url: "https://github.com/CocoaLumberjack/CocoaLumberjack.git", from: "3.8.5"),
        .package(url: "https://github.com/huynguyencong/EzPopup", from: "1.2.4"),
        .package(url: "https://github.com/JohnSundell/Wrap", from: "3.0.1"),
        .package(url: "https://github.com/SnapKit/SnapKit", from: "5.7.1"),
        .package(url: "https://github.com/evgenyneu/keychain-swift", from: "24.0.0"),
        .package(url: "https://github.com/devicekit/DeviceKit.git", from: "5.4.0"),
        .package(url: "https://github.com/tonymillion/Reachability", from: "3.7.6"),
        .package(url: "https://github.com/ZipArchive/ZipArchive.git", from: "2.5.5"),
        .package(url: "https://github.com/apple/swift-crypto.git", from: "3.6.1"),
        .package(url: "https://github.com/daltoniam/Starscream", from: "4.0.8"),
        .package(url: "https://github.com/yeatse/opencv-spm/", from: "4.10.0"),
    ],
    targets: [
        .target(
            name: "GolfTrakSDKPackage",
            dependencies: [
                .target(name: "GolfTrak"),
                .product(name: "Alamofire", package: "Alamofire"),
                .product(name: "CocoaLumberjack", package: "CocoaLumberjack"),
                .product(name: "MBProgressHUD", package: "MBProgressHUD"),
                .product(name: "EzPopup", package: "EzPopup"),
                .product(name: "Wrap", package: "Wrap"),
                .product(name: "SnapKit", package: "SnapKit"),
                .product(name: "KeychainSwift", package: "keychain-swift"),
                .product(name: "Starscream", package: "Starscream"),
                .product(name: "OpenCV", package: "opencv-spm"),
                .product(name: "DeviceKit", package: "DeviceKit"),
                .product(name: "Reachability", package: "Reachability"),
                .product(name: "ZipArchive", package: "ZipArchive"),
                .product(name: "Crypto", package: "swift-crypto"),
            ]),
        .binaryTarget(
            name: "GolfTrak",
            path: "./Sources/GolfTrak.xcframework")
    ]
)
