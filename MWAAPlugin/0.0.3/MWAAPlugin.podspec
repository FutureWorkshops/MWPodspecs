Pod::Spec.new do |s|
    s.name                  = 'MWAAPlugin'
    s.version               = '0.0.3'
    s.summary               = 'AA plugin for MobileWorkflow on iOS.'
    s.description           = <<-DESC
    AA plugin for MobileWorkflow on iOS, containg AA related steps:
	- MWAAStep
    DESC
    s.homepage              = 'https://www.mobileworkflow.io'
    s.license               = { :type => 'Copyright', :file => 'LICENSE' }
    s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :git => 'https://github.com/FutureWorkshops/MWAAPlugin-iOS.git', :tag => "#{s.version}" }
    s.platform              = :ios
    s.swift_version         = '5'
    s.ios.deployment_target = '13.0'
	s.default_subspecs      = 'Core'
	
    s.subspec 'Core' do |cs|
	    cs.dependency            'MobileWorkflow'
        cs.source_files          = 'MWAAPlugin/MWAAPlugin/**/*.swift'
        cs.vendored_frameworks   = 'MWAAPlugin/aaPrintScannerFw.framework'
        cs.preserve_paths        = ['MWAAPlugin/aaPrintScannerFw.framework']
    end
end
