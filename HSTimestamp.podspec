#
# Be sure to run `pod lib lint HSTimestamp.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HSTimestamp'
  s.version          = '0.1.0'
  s.summary          = 'This is a lib. including some functionalities about timestamp.'
  s.swift_version 	 = '4.1'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'This is a lib. about timestamp. You can use it for get current timestamp and for a functionality about time-ago'

  s.homepage         = 'https://github.com/hansol-yang/HSTimestamp'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hansol-yang' => 'hansolyan9@gmail.com' }
  s.source           = { :git => 'https://github.com/hansol-yang/HSTimestamp.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'HSTimestamp/Classes/**/*'
  
  # s.resource_bundles = {
  #   'HSTimestamp' => ['HSTimestamp/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
