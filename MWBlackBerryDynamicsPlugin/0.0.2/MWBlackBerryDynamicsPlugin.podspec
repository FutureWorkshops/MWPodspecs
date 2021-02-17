Pod::Spec.new do |s|
    s.name                  = 'MWBlackBerryDynamicsPlugin'
    s.version               = '0.0.2'
    s.summary               = 'BlackBerry Dynamics plugin for MobileWorkflow on iOS.'
    s.description           = <<-DESC
    BlackBerry Dynamics plugin for MobileWorkflow on iOS, based on BlackBerry Dynamics SDK: https://developers.blackberry.com/us/en/products/blackberry-dynamics/ios.html
    DESC
    s.homepage              = 'https://www.mobileworkflow.io'
    s.license               = { :type => 'Copyright', :file => 'LICENSE' }
    s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :git => 'https://github.com/FutureWorkshops/MWBlackBerryDynamicsPlugin-iOS.git', :tag => "#{s.version}" }
    s.platform              = :ios
    s.swift_version         = '5'
    s.ios.deployment_target = '13.0'
    s.default_subspecs      = 'Core'
	
    s.subspec 'Core' do |cs|
	cs.dependency            'MobileWorkflow'
        cs.vendored_frameworks   = 'MWBlackBerryDynamicsPlugin/BlackBerryDynamics.xcframework', 'MWBlackBerryDynamicsPlugin/BlackBerryCerticom.xcframework', 'MWBlackBerryDynamicsPlugin/BlackBerryCerticomSBGSE.xcframework'
        cs.source_files          = 'MWBlackBerryDynamicsPlugin/MWBlackBerryDynamicsPlugin/**/*.swift'
    end
end
