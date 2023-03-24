Pod::Spec.new do |s|
    s.name                  = 'MWFormsPlugin'
    s.version               = '1.4.8'
    s.summary               = 'A form plugin for MobileWorkflow on iOS.'
    s.description           = <<-DESC
    Includes the FormStep to display forms on iOS
    DESC
    s.homepage              = 'https://www.mobileworkflow.io'
    s.license               = { :type => 'Copyright', :file => 'LICENSE' }
    s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPluginRepository-iOS/main/MWFormsPlugin/1.4.8/MWFormsPlugin.zip' }
    s.platform              = :ios
    s.swift_version         = '5'
    s.ios.deployment_target = '15.0'
	s.default_subspecs      = 'Core'
	
    s.subspec 'Core' do |cs|
        cs.dependency            'MobileWorkflow', '~> 2.1.12'
        cs.dependency            'CurrencyText', '~> 2.2.0'
        cs.vendored_frameworks   = 'MWFormsPlugin.xcframework'
        cs.preserve_paths        = ['MWFormsPlugin.xcframework']

    end
end
