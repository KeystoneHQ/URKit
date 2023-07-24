Pod::Spec.new do |spec|
  spec.name         = "URKit"
  spec.version      = "11.4.0"
  spec.summary      = "UR (Uniform Resources) reference framework for Swift"
  spec.description  = "An iOS framework for encoding and decoding URs (Uniform Resources)"
  spec.homepage     = "https://github.com/KeystoneHQ/URKit.git"
  spec.license      = { :type => "BSD", :file => "LICENSE.md" }
  spec.author       = "Keystone"
  spec.social_media_url   = "https://twitter.com/KeystoneWallet"
  spec.swift_version = "5.6"
  spec.ios.deployment_target = "13.0"
  spec.source       = { :git => "https://github.com/KeystoneHQ/URKit.git", :tag => "#{spec.version}" }
  spec.source_files  = "Sources/URKit/**/*.swift"
  spec.requires_arc = true
  spec.dependency "DCBOR", "~> 0.10.0"
  spec.dependency "BCCrypto", "~> 0.9.0"
end
