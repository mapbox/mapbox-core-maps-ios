# mapbox-core-maps-ios

### Prerequisites

Before you can download the Mapbox Core Maps SDK, you need to create a token with `DOWNLOAD:READ` scope.
Go to https://account.mapbox.com and click "Create token"

##### SPM
Insert or append the following to `~/.netrc`

```bash
machine api.mapbox.com
  login mapbox
  password <TOKEN WITH DOWNLOAD:READ SCOPE>
```

## Integration

##### Swift Package Manager

###### Using SPM Package 📱🖥💻

```swift
.package(url: "https://github.com/mapbox/mapbox-core-maps-ios.git", from: "10.0.0-beta.11"),
```