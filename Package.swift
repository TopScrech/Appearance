// swift-tools-version: 6.3.2

import PackageDescription

let package = Package(
    name: "Appearance",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .watchOS(.v6)
    ],
    products: [
        .library(name: "Appearance", targets: ["Appearance"])
    ],
    targets: [
        .target(
            name: "Appearance",
            resources: [.process("Resources")]
        )
    ]
)
