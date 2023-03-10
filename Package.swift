// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "apns",
    platforms: [
      .iOS(.v13),
      .macOS(.v13),
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
            .product(name: "APNS", package: "apnswift"),
            .product(name: "Vapor", package: "vapor"),
        ]),
        .testTarget(name: "CosmicAPNSTests", dependencies: [
            .target(name: "CosmicAPNS"),
            .product(name: "XCTVapor", package: "vapor"),
        ]),
    ]
)
