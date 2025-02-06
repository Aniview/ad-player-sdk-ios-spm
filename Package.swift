// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

private let artifactVersion = "1.13.0"

let package = Package(
    name: "AdPlayerSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AdPlayerSDK",
            targets: ["AdPlayerTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/googleads/swift-package-manager-google-interactive-media-ads-ios", from: "3.1.0"),
    ],
    targets: [
        .target(
            name: "AdPlayerTarget",
            dependencies: [
                .target(name: "AdPlayerSDK"),
                .product(name: "GoogleInteractiveMediaAds", package: "swift-package-manager-google-interactive-media-ads-ios")
            ],
            path: "PlaceHolder"
        ),
        .binaryTarget(
            name: "AdPlayerSDK",
            url:
                "https://github.com/Aniview/ad-player-sdk-ios-pods/releases/download/\(artifactVersion)/AdPlayerSDK.zip",
            checksum: "d297a0aab4269719862828e6b7a4e93c6120ff0a053afbc920f4235d8651c047"
        )
    ]
)
