Pod::Spec.new do |spec|
  spec.name          = 'QAdsLite'
  spec.version       = '0.7.7'
  spec.summary       = 'QAdsLite for testing'
  spec.description   = 'This is an QAdsLite which will help us in achieving integration admob'
  spec.homepage      = 'https://qsoft.vn'
  spec.author        = { 'Quan Le' => 'quanlt@qsoft.vn' }
  spec.license       = { :type => 'MIT', :file => 'LICENSE' }
  spec.source        = { :http => 'https://github.com/backviet/QAdsLite/releases/download/0.7.6/QAdsLite.zip' }
  spec.swift_version = '5.0'
  spec.ios.deployment_target = '13.0'

  spec.static_framework = true  # Ensure adslite is a static framework

  # remove this line to ignore bug Error(code: 2, domain: com.google.admob, message: SDK tried to perform a networking task before being initialized.
  # QAdsLite KHONG link core GMA (import GoogleMobileAds = 0) -> dependency nay de COMMENT, host (google_mobile_ads fork) cung cap GMA.
  # Chi can bat khi build voi mediation pods (QALPrivacyConfig dung mediation-adapter consent). Version giu khop fork: ~> 13.3.0.
  # spec.dependency 'Google-Mobile-Ads-SDK', '~> 13.3.0'
  spec.vendored_frameworks =  "QAdsLite/QAdsLite.xcframework"
end