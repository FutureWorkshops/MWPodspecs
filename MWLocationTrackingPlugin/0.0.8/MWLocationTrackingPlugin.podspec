Pod::Spec.new do |s|
    s.name                  = 'MWLocationTrackingPlugin'
    s.version               = '0.0.8'
    s.summary               = 'Location tracking plugin for MobileWorkflow on iOS.'
    s.description           = <<-DESC
    Location Tracking plugin for MobileWorkflow on iOS.
    DESC
    s.homepage              = 'https://www.mobileworkflow.io'
    s.license               = { :type => 'Copyright', :file => 'LICENSE' }
    s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :git => 'https://github.com/FutureWorkshops/MWLocationTrackingPlugin-iOS.git', :tag => "#{s.version}" }
    s.platform              = :ios
    s.swift_version         = '5'
    s.ios.deployment_target = '13.0'
	s.default_subspecs      = 'Core'
	
    s.subspec 'Core' do |cs|
        cs.dependency            'MobileWorkflow', '~> 1.0.0'
        cs.source_files          = 'MWLocationTrackingPlugin/MWLocationTrackingPlugin/**/*.swift'
    end
end
