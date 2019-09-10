require 'json'

package = JSON.parse(File.read(File.join(__dir__, '../package.json')))

Pod::Spec.new do |s|
  s.name         = "RNReactNativeSharedGroupPreferences"
  s.version      = package['version']
  s.summary      = "React Native Shared Group Preferences"
  s.description  = "Share data between apps using a central shared storage."
  s.homepage     = package['homepage']
  s.license      = package['license']
  s.author       = package['author']
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/viction/react-native-shared-group-preferences.git", :branch => "master" }
  s.source_files  = "RNReactNativeSharedGroupPreferences.{h,m}"
  s.requires_arc = true

  s.dependency "React"

end
