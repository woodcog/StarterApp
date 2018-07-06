source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
inhibit_all_warnings!
project 'Lighthouse'
use_frameworks!

target 'Lighthouse' do
 pod 'Reachability'
 pod 'Alamofire', '~> 4.7'
 pod 'AlamofireObjectMapper', '~> 5.0'
 pod 'SVGKit', :git => 'https://github.com/SVGKit/SVGKit.git', :branch => '2.x'
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['EXPANDED_CODE_SIGN_IDENTITY'] = ""
            config.build_settings['CODE_SIGNING_REQUIRED'] = "NO"
            config.build_settings['CODE_SIGNING_ALLOWED'] = "NO"
        end
    end
    bundle_id = 'com.ibm.cio.be.ppm'
    
    directory = installer.config.project_pods_root + 'Target Support Files/'
    Dir.foreach(directory) do |path|
        full_path = directory + path
        if File.directory?(full_path)
            info_plist_path = full_path + 'Info.plist'
            if File.exist?(info_plist_path)
                
                text = File.read(info_plist_path)
                new_contents = text.gsub('org.cocoapods', bundle_id)
                File.open(info_plist_path, "w") {|file| file.puts new_contents }
            end
        end
    end
end
