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
        .package(url: "https://github.com/vervegroup/hybid-ios-spm-sdk.git", exact: "3.9.3")
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
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/verve-adapter/AppLovinMediationVerveAdapter-3.9.3.0.zip",
            checksum: "a9d1b8211f5022bb35646758d91785d9d47387f753aa4f2c4e4f7f0c3ceb09d0"
        )
    ]
)
