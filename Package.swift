// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "html.swift",
    products: [
        .library(
            name: "html.swift",
            targets: ["html.swift"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "html.swift",
            dependencies: [],
            path: "Sources"),
    ]
)
