platform :ios, '12.1'
inhibit_all_warnings!


target 'demo' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for demo

  target 'demoTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'demoUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end

target 'Network' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
  pod 'Alamofire', :git => 'https://github.com/Alamofire/Alamofire.git', :branch => 'alamofire5'
  # Pods for network

  target 'NetworkTests' do
    inherit! :search_paths
    # Pods for testing
  end

end

target 'Local' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
  pod 'RealmSwift'
  # Pods for realm

  target 'LocalTests' do
    inherit! :search_paths
    # Pods for testing
  end

end
