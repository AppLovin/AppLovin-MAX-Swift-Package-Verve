// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  Copyright © 2026 AppLovin. All rights reserved.

import PackageDescription

let package = Package(
    name: "AppLovinMediationVerveAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AppLovinMediationVerveAdapter",
            targets: ["AppLovinMediationVerveAdapterTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", from: "13.0.0"),
        .package(url: "https://github.com/vervegroup/hybid-ios-spm-sdk.git", exact: "3.9.0")
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
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/verve-adapter/AppLovinMediationVerveAdapter-3.9.0.0.zip",
            checksum: "01332f57995c77f3988f2ed8beb59f57ccebdfca7962554590c65f99dff7d105"
        )
    ]
)
