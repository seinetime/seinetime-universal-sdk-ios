Pod::Spec.new do |s|
  s.name             = 'SeinetimeUniversalSDK'
  s.version          = '0.0.1'   # bump this with every release
  s.summary          = 'Analytics Framework from Seinetime'
  s.description      = <<-DESC
    A lightweight analytics SDK that can be dropped into any iOS app.
    Supports iOS 11+ and Swift 5.x.
  DESC
  s.homepage         = 'https://github.com/seinetime/seinetime-universal-sdk-ios'
  s.license          = { type: 'MIT', file: 'LICENSE' } # or whatever you prefer
  s.author           = { 'Seinetime, Inc.' => 'contact@seinetime.ai' }
  
  # 1️⃣ Source – the ZIP with the xcframework
  s.source           = {
    :http => "https://github.com/seinetime/seinetime-universal-sdk-ios/raw/main/SeinetimeUniversalSDK/0.0.1/SeinetimeUniversalSDK.xcframework.zip"
  }

  s.platform         = :ios, '11.0'
  s.swift_versions   = ['5.0', '5.1', '5.2', '5.3'] # keep up‑to‑date

  # 2️⃣ Framework
  s.vendored_frameworks = 'SeinetimeUniversalSDK.xcframework'

  # 3️⃣ Build settings – exclude arm64 on simulator (if you built it that way)
  s.pod_target_xcconfig   = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
