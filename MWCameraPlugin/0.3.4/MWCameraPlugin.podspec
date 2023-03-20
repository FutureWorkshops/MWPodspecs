Pod::Spec.new do |s|
    s.name                  = 'MWCameraPlugin'
    s.version               = '0.3.4'
    s.summary               = 'Camera plugin for MobileWorkflow on iOS.'
    s.description           = <<-DESC
    Camera plugin for MobileWorkflow on iOS, containg camera capture related steps:
    - MWBarcodeStep
	- MWQRCodeStep
    DESC
    s.homepage              = 'https://www.mobileworkflow.io'
    s.license               = { :type => 'Copyright', :file => 'LICENSE' }
    s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPluginRepository-iOS/main/MWCameraPlugin/0.3.4/MWCameraPlugin.zip' }
    s.platform              = :ios
    s.swift_version         = '5'
    s.ios.deployment_target = '15.0'
	s.default_subspecs      = 'Core'
	
    s.subspec 'Core' do |cs|
        cs.dependency            'MobileWorkflow', '~> 2.1.12'
        cs.vendored_frameworks   = 'MWCameraPlugin.xcframework'
        cs.preserve_paths        = ['MWCameraPlugin.xcframework']

    end
end
