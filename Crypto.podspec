Pod::Spec.new do |s|

  s.name         = 'Crypto'
  s.version      = '0.0.1'
  s.summary      = 'Simple CommonCrypto wrapper for Swift for Mac and iOS'

  s.homepage     = 'https://github.com/soffes/Crypto'
  s.license      = { :type => 'MIT' }

  s.authors      = { 'Sam Soffes' => 'sam@soff.es' }
  s.source       = { :git => 'https://github.com/soffes/Crypto.git', :tag => "v#{s.version}" }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'

  s.requires_arc = true

  s.source_files = 'Crypto/**/*.swift'
  s.preserve_paths = [ 'CommonCrypto/*' ]
  s.xcconfig = {
    'SWIFT_INCLUDE_PATHS[sdk=iphoneos*]' => '$(SRCROOT)/Crypto/CommonCrypto/iphoneos',
    'SWIFT_INCLUDE_PATHS[sdk=iphonesimulator*]' => '$(SRCROOT)/Crypto/CommonCrypto/iphonesimulator',
    'SWIFT_INCLUDE_PATHS[sdk=macosx*]' => '$(SRCROOT)/Crypto/CommonCrypto/macosx'
  }

end
