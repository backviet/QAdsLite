Pod::Spec.new do |spec|
  spec.name          = 'QAdsLite'
  spec.version       = '0.0.3'
  spec.summary       = 'QAdsLite for testing'
  spec.description   = 'This is an QAdsLite which will help us in achieving integration admob'
  spec.homepage      = 'https://qsoft.vn'
  spec.author        = { 'Quan Le' => 'quanlt@qsoft.vn' }
  spec.license       = { :type => 'MIT', :file => 'LICENSE' }
  spec.source        = { :http => 'https://github.com/backviet/QAdsLite/releases/download/0.0.3/QAdsLite.zip' }
  spec.swift_version = '5.0'
  spec.ios.deployment_target = '13.0'

  spec.dependency 'Google-Mobile-Ads-SDK','~> 11.5.0'
  spec.vendored_frameworks =  "QAdsLite/QAdsLite.xcframework"
end