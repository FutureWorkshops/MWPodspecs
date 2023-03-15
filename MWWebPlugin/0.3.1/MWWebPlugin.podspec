Pod::Spec.new do |s|
    s.name                  = 'MWWebPlugin'
    s.version               = '0.3.1'
    s.summary               = 'WebView plugin for MobileWorkflow on iOS.'
    s.description           = <<-DESC
    WebView plugin for MobileWorkflow on iOS, containg WebView related steps:
	- MWWebStep
    DESC
    s.homepage              = 'https://www.mobileworkflow.io'
    s.license               = { :type => 'Copyright', :file => 'LICENSE' }
    s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPluginRepository-iOS/main/MWWebPlugin/0.3.1/MWWebPlugin.zip' }
    s.platform              = :ios
    s.swift_version         = '5'
    s.ios.deployment_target = '15.0'
	s.default_subspecs      = 'Core'
	
    s.subspec 'Core' do |cs|
        cs.dependency            'MobileWorkflow', '~> 2.1.12'
        cs.vendored_frameworks   = 'MWWebPlugin.xcframework'
        cs.preserve_paths        = ['MWWebPlugin.xcframework']
    end
end
