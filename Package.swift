// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import Foundation

let version = "11.5.2"
let checksum = "fd5f27d22e0d0b5abe469399e35b9849d658b9dac46466404bb22ddd3d536923"

let package = Package(
    name: "MapboxCoreMaps",
    platforms: [.iOS(.v10), .macOS(.v10_15), .custom("visionos", versionString: "1.0")],
    products: [
        .library(
            name: "MapboxCoreMaps",
            targets: ["MapboxCoreMapsWrapper"]),
    ],
    dependencies: [
        .package(name: "MapboxCommon", url: "https://github.com/mapbox/mapbox-common-ios.git", from: "24.5.0"),
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
