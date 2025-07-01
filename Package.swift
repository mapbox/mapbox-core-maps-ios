// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import Foundation

let version = "11.15.0-SNAPSHOT-07-01--07-27.git-e74ebfc"
let checksum = "2fece46fa459f81bcc3e58a146da6772dcea5a7f52933b0ccca81379d70dc824"
let commonVersion: Version = "24.15.0-SNAPSHOT-07-01--07-27.git-e74ebfc"
let releaseType = "snapshots"

let package = Package(
    name: "MapboxCoreMaps",
    platforms: [.iOS(.v12), .macOS(.v10_15), .custom("visionos", versionString: "1.0")],
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
