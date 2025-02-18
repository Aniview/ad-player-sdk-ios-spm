// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

private let artifactVersion = "1.13.4"

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
            checksum: "0f300012bc9ae9d50b91e12f9f0a93c1bb59d209b5b326ee84818cbcf95590ad"
        )
    ]
)
