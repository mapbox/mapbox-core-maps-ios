// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import Foundation

let version = "11.17.1-SNAPSHOT-12-17--13-28.git-6e5c28b"
let checksum = "b8ae7a1ac555beab4c33a3fcf97aecbaf577288eecd8a47d29e7b1df3de640e7"
let commonVersion: Version = "24.17.1-SNAPSHOT-12-17--13-28.git-6e5c28b"
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
