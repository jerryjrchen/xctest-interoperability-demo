// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-sandbox",
    dependencies: [
        .package(
            url: "git@github.com:jerryjrchen/swift-corelibs-xctest.git", branch: "try-out-interop"
        )
    ],
    targets: [
        .testTarget(
            name: "swift-sandboxTests",
            dependencies: [
                .product(name: "XCTest", package: "swift-corelibs-xctest"),
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)
