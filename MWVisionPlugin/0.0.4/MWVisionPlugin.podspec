Pod::Spec.new do |s|
    s.name                  = 'MWVisionPlugin'
    s.version               = '0.0.4'
    s.summary               = 'Vision plugin for MobileWorkflow on iOS.'
    s.description           = <<-DESC
    Vision plugin for MobileWorkflow on iOS, containg Vision capture and OCR related steps:
	- MWExtractRegexTextCodeStep
    DESC
    s.homepage              = 'https://www.mobileworkflow.io'
    s.license               = { :type => 'Copyright', :file => 'LICENSE' }
    s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :git => 'https://github.com/FutureWorkshops/MWVisionPlugin-iOS.git', :tag => "#{s.version}" }
    s.platform              = :ios
    s.swift_version         = '5'
    s.ios.deployment_target = '13.0'
	s.default_subspecs      = 'Core'
	
    s.subspec 'Core' do |cs|
	    cs.dependency            'MobileWorkflow'
        cs.source_files          = 'MWVisionPlugin/MWVisionPlugin/**/*.swift'
    end
end
