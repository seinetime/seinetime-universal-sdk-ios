Pod::Spec.new do |s|
  s.name             = 'SeinetimeUniversalSDK'
  s.version          = '1.0.7'   # bump this with every release
  s.summary          = 'Analytics Framework from Seinetime'
  s.description      = <<-DESC
    A lightweight analytics SDK that can be dropped into any iOS app.
    Supports iOS 11+ and Swift 5.x.
  DESC
  s.homepage         = 'https://github.com/seinetime/seinetime-universal-sdk-ios'
  s.license          = { :type => 'Copyright', :text => '      Copyright 2025 Seinetime, Inc. All rights reserved.\n' }

  s.author           = { 'Seinetime.AI' => 'contact@seinetime.ai' }

  # Binary distribution via GitHub releases
  s.source           = {
    :http => "https://github.com/seinetime/seinetime-universal-sdk-ios/raw/main/SeinetimeUniversalSDK/1.0.7/SeinetimeUniversalSDK.xcframework.zip"
  }

  s.platform         = :ios, '12.0'
  s.swift_versions   = ['5.0', '5.1', '5.2', '5.3', '5.7', '5.9']

  # Use pre-built XCFramework for distribution
  s.vendored_frameworks = 'SeinetimeUniversalSDK.xcframework'

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'SWIFT_VERSION' => '5.9'
  }

end
