// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "apns",
    platforms: [
      .iOS(.v13),
      .macOS(.v10_15),
    ],
    products: [
        .library(name: "APNS", targets: ["APNS"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Wabi-Studios/APNSwift", from: "5.0.0-beta.5"),
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"),
    ],
    targets: [
        .target(name: "APNS", dependencies: [
            .product(name: "APNSwift", package: "apnswift"),
            .product(name: "Vapor", package: "vapor"),
        ]),
        .testTarget(name: "APNSTests", dependencies: [
            .target(name: "APNS"),
            .product(name: "XCTVapor", package: "vapor"),
        ]),
    ]
)
