#
# Be sure to run `pod lib lint HZBBAdSdk.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'HZBBAdSdk'
  s.version          = '0.1.0'
  s.summary          = 'A short description of HZBBAdSdk.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://gitee.com/377761281/hzbbad-sdk-lib-main.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '13572875319' => '377761281@163.com' }
  s.source           = { :git => 'https://gitee.com/377761281/hzbbad-sdk-lib-main.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.pod_target_xcconfig = { 'VALID_ARCHS[sdk=iphonesimulator*]' => '' }

  #s.source_files = 'HZBBAdSDK/Classes/**/*.h'
  # 在 podspec 文件中添加 s.static_framework = true，CocoaPods 就会把这个库配置成static framework。同时支持 Swift 和 Objective-C
  s.static_framework = true
  # 是否支持arc
  s.requires_arc = true
  s.xcconfig         = { 'OTHER_LDFLAGS' => '-ObjC'}
  s.vendored_frameworks = 'HZBBAdSdk/Classes/DDDAdSdk.framework' #工程依赖的第三方framework
  #s.resource = 'DDDAdSdk/Assets/DyAdSdk.bundle'
  # s.resource_bundles = {
  #   'HZBBAdSdk' => ['HZBBAdSdk/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'AFNetworking', '~> 4.0.1'
  s.dependency 'GDTMobSDK', '~> 4.12.3'
  s.dependency 'DDDgameSDK', '~> 1.4.6.3'
  s.dependency 'Ads-CN', '~> 3.4.2.3'
end
