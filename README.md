# MapboxCoreMaps
MapboxCoreMaps is the core map renderer used in the Mapbox Maps SDK. This repository contains the manifests for Swift Package Manager and CocoaPods, making integrating the Mapbox Maps SDK into your iOS projects easy.

## Mapbox Maps SDK for iOS
To learn more about the Mapbox Maps SDK for iOS and explore its features and capabilities, please visit the main repository at https://github.com/mapbox/mapbox-maps-ios.

## Documentation
Comprehensive documentation for the Mapbox Maps SDK for iOS is available at https://docs.mapbox.com/ios/maps/. This documentation provides detailed guides, API references, and examples to help you get started with integrating maps into your iOS applications.

## Installation
### Swift Package Manager
To add MapboxCoreMaps as a dependency using Swift Package Manager, you can follow these steps:

1. Open your Xcode project or workspace.
1. Go to the "File" menu and select "Swift Packages" and then "Add Package Dependency..."
1. Enter the repository URL https://github.com/mapbox/MapboxCoreMaps and click "Next."
1. Choose the version or branch you want to use.
1. After selecting the desired version, click "Next", and Xcode will resolve and fetch the package dependencies.
1. Finally, choose the target where you want to add the package and click "Finish."

### CocoaPods
To integrate MapboxCoreMaps using CocoaPods, you can follow these steps:

1. Add the following line to your Podfile:    
    `pod 'MapboxCoreMaps', '~> 1.0'`    
Make sure to replace 1.0 with the desired version of MapboxCoreMaps.
1. Run the following command in your terminal:    
    `pod install`    
This will install MapboxCoreMaps and its dependencies into your project.

## License
MapboxCoreMaps is licensed under the [Mapbox Terms of Service](https://www.mapbox.com/legal/tos/). Please review the terms and conditions before using this software in your projects.





