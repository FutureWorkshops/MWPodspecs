Pod::Spec.new do |s|
    s.name                  = 'MWVisionPlugin'
    s.version               = '0.1.3'
    s.summary               = 'Vision plugin for MobileWorkflow on iOS.'
    s.description           = <<-DESC
    Vision plugin for MobileWorkflow on iOS, containg Vision capture and OCR related steps:
	- MWExtractRegexTextCodeStep
    DESC
    s.homepage              = 'https://www.mobileworkflow.io'
    s.license               = { :type => 'Copyright', :file => 'LICENSE' }
    s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPluginRepository-iOS/main/MWVisionPlugin/0.1.3/MWVisionPlugin.zip' }
    s.platform              = :ios
    s.swift_version         = '5'
    s.ios.deployment_target = '13.0'
	s.default_subspecs      = 'Core'
	
    s.subspec 'Core' do |cs|
        cs.dependency            'MobileWorkflow', '~> 2.0.3'
        cs.vendored_frameworks   = 'MWVisionPlugin.xcframework'
        cs.preserve_paths        = ['MWVisionPlugin.xcframework']
    end
end
