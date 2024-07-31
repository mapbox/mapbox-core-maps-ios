// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import Foundation

let version = "11.6.0-rc.1"
let checksum = "8494a520ccf4dacd7c65be292164669cf4d8cf5c6164b9eef58ba1dd7190a13d"

let package = Package(
    name: "MapboxCoreMaps",
    platforms: [.iOS(.v10), .macOS(.v10_15), .custom("visionos", versionString: "1.0")],
    products: [
        .library(
            name: "MapboxCoreMaps",
            targets: ["MapboxCoreMapsWrapper"]),
    ],
    dependencies: [
        .package(name: "MapboxCommon", url: "https://github.com/mapbox/mapbox-common-ios.git", from: "24.6.0-rc.1"),
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
