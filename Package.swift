// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

private let artifactVersion = "1.12.2"

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
            checksum: "a5ad1bf3b83ca4b9f326231822cd13de4409fa77a48285266961c8f70c4f7761"
        )
    ]
)
