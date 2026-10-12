// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import Foundation

let version = "11.34.0-SNAPSHOT-10-12--14-16.git-824b98a"
let checksum = "8ad93b9abb807b7a411e74587d326db5b6f9fea40ec8503c22f9274fd133ac53"
let commonVersion: Version = "24.34.0-SNAPSHOT-10-12--14-16.git-824b98a"
let releaseType = "snapshots"

let package = Package(
    name: "MapboxCoreMaps",
    platforms: [.iOS(.v14), .macOS(.v10_15), .custom("visionos", versionString: "1.0")],
    products: [
        .library(
            name: "MapboxCoreMaps",
            targets: ["MapboxCoreMapsWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/mapbox/mapbox-common-ios.git", exact: commonVersion),
    ],
    targets: [
        .target(
            name: "MapboxCoreMapsWrapper",
            dependencies: [.product(name: "MapboxCommon", package: "mapbox-common-ios"), "MapboxCoreMaps"]
        ),
        .binaryTarget(
            name: "MapboxCoreMaps",
            url: "https://api.mapbox.com/downloads/v2/mobile-maps-core/\(releaseType)/ios/packages/\(version)/MapboxCoreMaps.xcframework-dynamic.zip",
            checksum: checksum
        )
    ]
)
