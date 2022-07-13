Pod::Spec.new do |s|
    s.name                  = 'MWChartsPlugin'
    s.version               = '1.0.7'
    s.summary               = 'Chart plugin for MobileWorkflow on iOS.'
    s.description           = <<-DESC
    Chart plugin for MobileWorkflow on iOS, based on Charts by Daniel Gindi: https://github.com/danielgindi/Charts
    DESC
    s.homepage              = 'https://www.mobileworkflow.io'
    s.license               = { :type => 'Copyright', :file => 'LICENSE' }
    s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPluginRepository-iOS/main/MWChartsPlugin/1.0.7/MWChartsPlugin.zip' }
    s.platform              = :ios
    s.swift_version         = '5'
    s.ios.deployment_target = '13.0'
	s.default_subspecs      = 'Core'
	
    s.subspec 'Core' do |cs|
        cs.dependency            'MobileWorkflow', '~> 2.0.3'
	cs.dependency            'Charts', '~> 3.6.0'
	cs.dependency            'Colours', '~> 5.13.0'
        cs.vendored_frameworks   = 'MWChartsPlugin.xcframework'
        cs.preserve_paths        = ['MWChartsPlugin.xcframework']
    end
end
