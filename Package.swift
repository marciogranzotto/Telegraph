// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Telegraph",
    platforms: [
        .iOS(.v9),
        .tvOS(.v9),
        .macOS(.v10_13)
    ],
    products: [
        .library(
            name: "Telegraph",
            targets: ["Telegraph"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/marciogranzotto/CocoaAsyncSocket.git", from: "master"),
        .package(url: "https://github.com/Building42/HTTPParserC.git", from: "2.9.4")
    ],
    targets: [
        .target(
            name: "Telegraph",
            dependencies: ["CocoaAsyncSocket", "HTTPParserC"],
            path: "Sources"
        ),
        .testTarget(
            name: "TelegraphTests",
            dependencies: ["CocoaAsyncSocket", "HTTPParserC", "Telegraph"],
            path: "Tests"
        )
    ]
)
