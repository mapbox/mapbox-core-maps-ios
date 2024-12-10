// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import Foundation

let version = "10.19.2"
let checksum = "1e351885d28940ba8ecfbee5106856c8a7a16c59cd90d5e6f6b64526b1d338eb"

let package = Package(
    name: "MapboxCoreMaps",
    platforms: [.iOS(.v10), .macOS(.v10_15)],
    products: [
        .library(
            name: "MapboxCoreMaps",
            targets: ["MapboxCoreMapsWrapper"]),
    ],
    dependencies: [
        .package(name: "MapboxCommon", url: "https://github.com/mapbox/mapbox-common-ios.git", from: "23.11.2"),
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
