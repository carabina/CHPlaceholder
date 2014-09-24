#
# Be sure to run `pod lib lint CHPlaceholder.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "CHPlaceholder"
  s.version          = "0.1.0"
  s.summary          = "A customizable placeholder view."
  s.description      = <<-DESC
                       A customizable placeholder view that can be made programmatically or via IB with Xcode 6+.
                       DESC
  s.homepage         = "https://github.com/clockworx132/CHPlaceholder"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "clockworx132" => "heinsenc@gmail.com" }
  s.source           = { :git => "https://github.com/clockworx132/CHPlaceholder.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/ChayelH'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'CHPlaceholder' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
