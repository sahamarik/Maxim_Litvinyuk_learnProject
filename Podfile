platform :ios, '10.0'
use_frameworks!
target 'test' do
    pod 'HSDatePickerViewController', '~> 1.0'
    pod 'Alamofire', '~> 4.0'
    pod 'SVProgressHUD', :git => 'https://github.com/SVProgressHUD/SVProgressHUD.git'
end
post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '3.0'
        end
    end
end




