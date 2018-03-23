#
# Be sure to run `pod lib lint TLCustomMask.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TLCustomMask'
  s.version          = '2.0.0'
  s.summary          = 'TLCustomMask takes a string and applies a custom mask to it.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TLCustomMask takes a string and applies a custom mask to it.
Ideally it is used from within a TextField to apply real-time masks to text inputs.
Usage:
func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
    self.text = customMask!.formatStringWithRange(range, string: string)
    return false
}
                       DESC

  s.homepage         = 'https://github.com/Edudjr/TLCustomMask'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Eduardo Domene Junior' => 'eduardo.djr@hotmail.com' }
  s.source           = { :git => 'https://github.com/Edudjr/TLCustomMask.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.3'

  s.source_files = 'TLCustomMask/Classes/**/*'

  # s.resource_bundles = {
  #   'TLCustomMask' => ['TLCustomMask/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
