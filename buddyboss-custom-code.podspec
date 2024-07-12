require "json"
require_relative '../node_modules/react-native/scripts/react_native_pods'
require_relative '../node_modules/@react-native-community/cli-platform-ios/native_modules'
package = JSON.parse(File.read(File.join(__dir__, "package.json")))

target 'YourApp' do
  use_react_native!(
    path: '../node_modules',
    # to enable hermes on iOS, change `false` to `true` and then install pods
    # hermes_enabled => true
    flipper_configuration: FlipperConfiguration.enabled,
  )

Pod::Spec.new do |s|
  s.name         = 'buddyboss-custom-code'
  s.version      = '1.0.0'
  s.summary      = 'A short description of the buddyboss-custom-code pod' # Add this line
  s.description  = <<-DESC
                    A longer description of the buddyboss-custom-code pod.
                    DESC
  s.homepage     = 'https://programs.modusleadership.com.au/'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'Your Name' => 'fabian@custommem.io' }
  s.source       = { :git => 'https://github.com/fabby-custommem/BuddyBossApp.git', :tag => s.version.to_s }
  s.platform     = :ios, '10.0'
  s.source_files = "ios/**/*.{h,m,mm}"

  s.dependency "React-Core"
end
