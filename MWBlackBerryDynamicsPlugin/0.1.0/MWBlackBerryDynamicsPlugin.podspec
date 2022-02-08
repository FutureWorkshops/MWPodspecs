Pod::Spec.new do |s|
    s.name                  = 'MWBlackBerryDynamicsPlugin'
    s.version               = '0.1.0'
    s.summary               = 'BlackBerry Dynamics plugin for MobileWorkflow on iOS.'
    s.description           = <<-DESC
    BlackBerry Dynamics plugin for MobileWorkflow on iOS, based on BlackBerry Dynamics SDK: https://developers.blackberry.com/us/en/products/blackberry-dynamics/ios.html
    DESC
    s.homepage              = 'https://www.mobileworkflow.io'
    s.license               = { :type => 'Copyright', :file => 'LICENSE' }
    s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPluginRepository-iOS/main/MWBlackBerryDynamicsPlugin/0.1.0/MWBlackBerryDynamicsPlugin.zip' }
    s.platform              = :ios
    s.swift_version         = '5'
    s.ios.deployment_target = '13.0'
    s.default_subspecs      = 'Core'
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' } 
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
	
    s.subspec 'Core' do |cs|
        cs.dependency            'MobileWorkflow', '~> 1.0.0'
        cs.dependency            'BlackBerryDynamics'
        cs.vendored_frameworks   = 'MWBlackBerryDynamicsPlugin.xcframework'
        cs.preserve_paths        = ['MWBlackBerryDynamicsPlugin.xcframework']
    end
end
