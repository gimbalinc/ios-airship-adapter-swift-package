// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GimbalAirshipAdapter",
    platforms: [
        .iOS(.v13)],
    products: [
        .library(
            name: "GimbalAirshipAdapter",
            targets: ["GimbalAirshipAdapter"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/gimbalinc/ios-gimbal-swift-package.git",
            exact: "2.93.0"
        ),
        .package(
            url: "https://github.com/urbanairship/ios-library.git",
            exact: "16.11.3"
        ),
    ],
    targets: [
        .target(
            name: "GimbalAirshipAdapter",
               dependencies: [
                .product(name: "AirshipCore", package:"ios-library"),
                .product(name: "Gimbal", package: "ios-gimbal-swift-package")
               ])
    ]
)
