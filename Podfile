platform :ios, '10.0'
use_frameworks!
inhibit_all_warnings!


pod 'Realm'
pod 'RealmSwift'
pod 'Swinject', '~> 2.0.0'

target 'ViperExample' do

  # Networking
  pod 'Alamofire', '~> 4.0'
  pod 'AlamofireNetworkActivityIndicator', '~> 2.0'
  pod 'ObjectMapper'

  # UI Helpers
  pod 'TableKit'
  
  # Database
  pod 'Realm'
  pod 'RealmSwift'
  
end

target 'ViperExampleTests' do

end


post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      
      config.build_settings['SWIFT_VERSION'] = '4.0'
      config.build_settings['SWIFT_OPTIMIZATION_LEVEL'] = '-Owholemodule'

    end
  end
end

