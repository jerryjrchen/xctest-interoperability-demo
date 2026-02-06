// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2026 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for Swift project authors
//

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
