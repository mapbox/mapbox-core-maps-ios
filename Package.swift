// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import Foundation

let version = "11.26.0-SNAPSHOT-08-04--20-20.git-7dfddc2"
let checksum = "d023338173c8e6939a2bf8a4a031ef21d1f972bd73d3b5761c57648c3bb6db14"
let commonVersion: Version = "24.26.0-SNAPSHOT-08-04--20-20.git-7dfddc2"
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
