// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SegmentBraze",
    platforms: [
        .macOS("10.15"),
        .iOS("13.0"),
        .tvOS("11.0"),
        .watchOS("7.1")
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SegmentBraze",
            targets: ["SegmentBraze"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(
            name: "SegmentDeprecated",
            url: "https://github.com/SaiKhal/SegmentDeprecated",
            from: "1.0.0"
        ),
        .package(
            name: "braze-swift-sdk",
            url:"https://github.com/braze-inc/braze-swift-sdk.git",
            from: "5.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SegmentBraze",
            dependencies: ["Segment", .product(name: "BrazeKit", package: "braze-swift-sdk")]),
        
        // TESTS ARE HANDLED VIA THE EXAMPLE APP.
    ]
)

