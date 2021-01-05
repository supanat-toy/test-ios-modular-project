# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

platform :ios, '12.2'
use_frameworks!
workspace 'test-clean-swift'

def core_pods 
  pod 'CocoaAsyncSocket'
  pod 'Moya'
end

target 'Core' do
  project 'Core/Core.project'
  use_frameworks!
  core_pods
end

target 'Application' do
  project 'Application/Application.project'
  
  use_frameworks!
  core_pods
end

target 'test-clean-swift (iOS)' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  core_pods

end

target 'test-clean-swift (macOS)' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  core_pods
  # Pods for test-clean-swift (macOS)

end
