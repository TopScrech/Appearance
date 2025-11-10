// swift-tools-version: 6.2.1

import PackageDescription

let package = Package(
    name: "Appearance",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .watchOS(.v6)
    ],
    products: [
        .library(name: "Appearance", targets: ["Appearance"])
    ],
    targets: [
        .target(name: "Appearance")
    ]
)
