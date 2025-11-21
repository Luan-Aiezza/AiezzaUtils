// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "AiezzaUtils",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "AiezzaUtils",
            targets: ["CoreUtils"]   // antes era "AiezzaUtils"
        ),
        .library(
            name: "AiezzaUI",
            targets: ["AiezzaUI"]
        )
    ],
    dependencies: [],
    targets: [
        // Core (antes AiezzaUtils)
        .target(
            name: "CoreUtils",
            path: "Sources/CoreUtils"
        ),

        // UI module
        .target(
            name: "AiezzaUI",
            dependencies: ["CoreUtils"],
            path: "Sources/AiezzaUI"
        )
    ]
)
