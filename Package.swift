// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  Copyright © 2026 AppLovin. All rights reserved.

import PackageDescription

let package = Package(
    name: "AppLovinMediationVerveAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AppLovinMediationVerveAdapter",
            targets: ["AppLovinMediationVerveAdapterTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", from: "13.0.0"),
        .package(url: "https://github.com/vervegroup/hybid-ios-spm-sdk.git", exact: "3.9.1")
    ],
    targets: [
        .target(
            name: "AppLovinMediationVerveAdapterTarget",
            dependencies: [
                .target(name: "AppLovinMediationVerveAdapter"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .product(name: "HyBid", package: "hybid-ios-spm-sdk"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AppLovinMediationVerveAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/verve-adapter/AppLovinMediationVerveAdapter-3.9.1.1.zip",
            checksum: "03d504cc75c051dd0b59a430218bc2f724a4066b4681d26373acfb162f252534"
        )
    ]
)
