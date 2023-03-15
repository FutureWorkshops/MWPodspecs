Pod::Spec.new do |s|
    s.name                  = 'MWLocationTrackingPlugin'
    s.version               = '0.7.1'
    s.summary               = 'Location tracking plugin for MobileWorkflow on iOS.'
    s.description           = <<-DESC
    Location Tracking plugin for MobileWorkflow on iOS.
    DESC
    s.homepage              = 'https://www.mobileworkflow.io'
    s.license               = { :type => 'Copyright', :file => 'LICENSE' }
    s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPluginRepository-iOS/main/MWLocationTrackingPlugin/0.7.1/MWLocationTrackingPlugin.zip' }
    s.platform              = :ios
    s.swift_version         = '5'
    s.ios.deployment_target = '15.0'
	s.default_subspecs      = 'Core'
	
    s.subspec 'Core' do |cs|
        cs.dependency            'MobileWorkflow', '~> 2.1.12'
        cs.vendored_frameworks   = 'MWLocationTrackingPlugin.xcframework'
        cs.preserve_paths        = ['MWLocationTrackingPlugin.xcframework']

    end
end
