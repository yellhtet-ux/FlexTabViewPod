#
# Be sure to run `pod lib lint FlexTabView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FlexTabView'
  s.version          = '1.0.0'
  s.summary          = 'Custom tab bar for UIKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
'Custom tab bar for UIKit.Just generate view controllers from boiler plate codes and then assign them into the tab bar controllers.'
                       DESC

  s.homepage         = 'https://github.com/yellhtet-ux/FlexTabViewPod'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ye Andrew Htet' => 'greyhorror30@gmail.com' }
  s.source           = { :git => 'https://github.com/yellhtet-ux/FlexTabViewPod.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'

  s.source_files = 'Classes/**/*.swift'
  s.swift_version = '5.0'
  s.platforms =  {
    "ios": "13.0"
}
  
  # s.resource_bundles = {
  #   'FlexTabView' => ['FlexTabView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
