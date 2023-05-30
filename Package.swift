// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import Foundation

let version = "10.14.0-rc.1"
let checksum = "f0eb9c70c61b3f6d2f4f08c3aa403de42b2e316e2c6817fced7fbc9c1a79fcd4"

let package = Package(
    name: "MapboxCoreMaps",
    platforms: [.iOS(.v10), .macOS(.v10_15)],
    products: [
        .library(
            name: "MapboxCoreMaps",
            targets: ["MapboxCoreMapsWrapper"]),
    ],
    dependencies: [
        .package(name: "MapboxCommon", url: "https://github.com/mapbox/mapbox-common-ios.git", from: "23.6.0-rc.1"),
    ],
    targets: [
        .target(
            name: "MapboxCoreMapsWrapper",
            dependencies: ["MapboxCommon", "MapboxCoreMaps"]
        ),
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://api.mapbox.com/downloads/v2/mobile-maps-core/releases/ios/packages/\(version)/MapboxCoreMaps.xcframework-dynamic.zip",
            checksum: checksum
        )
    ]
)
