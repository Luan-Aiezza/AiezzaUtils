// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AiezzaUtils",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "AiezzaUtils", targets: ["AiezzaUtils"]),
        .library(name: "AiezzaUI", targets: ["AiezzaUI"])
    ],
    dependencies: [],
    targets: [
        .target(name: "AiezzaUtils"),
        .target(
            name: "AiezzaUI",
            dependencies: ["AiezzaUtils"]
        )
    ]
)
