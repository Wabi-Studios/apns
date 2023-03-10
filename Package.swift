// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "apns",
    platforms: [
      .iOS(.v13),
      .macOS(.v10_15),
    ],
    products: [
        .library(name: "CosmicAPNS", targets: ["CosmicAPNS"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Wabi-Studios/APNSwift", from: "5.0.0-beta.5"),
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"),
    ],
    targets: [
        .target(name: "CosmicAPNS", dependencies: [
            .product(name: "APNSwift", package: "apnswift"),
            .product(name: "Vapor", package: "vapor"),
        ]),
        .testTarget(name: "CosmicAPNSTests", dependencies: [
            .target(name: "CosmicAPNS"),
            .product(name: "XCTVapor", package: "vapor"),
        ]),
    ]
)
