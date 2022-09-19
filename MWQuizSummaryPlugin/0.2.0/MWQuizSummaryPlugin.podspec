Pod::Spec.new do |s|
    s.name                  = 'MWQuizSummaryPlugin'
    s.version               = '0.2.0'
    s.summary               = 'Quiz Summary plugin for MobileWorkflow on iOS.'
    s.description           = <<-DESC
    Quiz Summary plugin for MobileWorkflow on iOS, containg a summary screen based on the Completion Screen.
    DESC
    s.homepage              = 'https://www.mobileworkflow.io'
    s.license               = { :type => 'Copyright', :file => 'LICENSE' }
    s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPluginRepository-iOS/main/MWQuizSummaryPlugin/0.2.0/MWQuizSummaryPlugin.zip' }
    s.platform              = :ios
    s.swift_version         = '5'
    s.ios.deployment_target = '15.0'
	s.default_subspecs      = 'Core'
	
    s.subspec 'Core' do |cs|
        cs.dependency            'MobileWorkflow', '~> 2.1.0'
        cs.vendored_frameworks   = 'MWQuizSummaryPlugin.xcframework'
        cs.preserve_paths        = ['MWQuizSummaryPlugin.xcframework']
    end
end
