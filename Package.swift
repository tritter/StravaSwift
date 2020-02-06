// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "StravaSwift",
    platforms: [
        .macOS(.v10_14), .iOS(.v10), .watchOS(.v3)
    ],
    products: [
        .library(name: "StravaSwift", targets: ["StravaSwift"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "4.9.0"),
        .package(url: "https://github.com/tritter/SwiftyJSON.git",
                 .branch("master")),
    ],
    targets: [
        .target(name: "StravaSwift", dependencies: ["Alamofire", "SwiftyJSON"]),
        .testTarget(name: "StravaSwiftTests", dependencies: ["StravaSwift"]),
    ]
)
