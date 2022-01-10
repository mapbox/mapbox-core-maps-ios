Pod::Spec.new do |m|

  version = '10.0.3'

  m.name = 'MapboxCoreMaps'
  m.version = version

  m.summary = 'Vector map solution for iOS with full styling capabilities.'
  m.description = 'Metal-based vector map solution for iOS with full styling capabilities.'
  m.homepage = 'https://docs.mapbox.com/ios/maps/'
  m.license = { type: 'Commercial', file: 'LICENSE.md' }
  m.author = { 'Mapbox' => 'mobile@mapbox.com' }
  m.social_media_url = 'https://twitter.com/mapbox'
  m.documentation_url = 'https://docs.mapbox.com/ios/beta/maps/guides/install/'

  m.source = { http: "https://api.mapbox.com/downloads/v2/mobile-maps-core/releases/ios/packages/#{version.to_s}/MapboxCoreMaps.xcframework-dynamic.zip" }

  m.platform = :ios
  m.ios.deployment_target = '11.0'

  m.requires_arc = true

  m.vendored_frameworks = 'MapboxCoreMaps.xcframework'

  m.dependency 'MapboxCommon', '~> 20.0'

end
