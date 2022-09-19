Pod::Spec.new do |s|
  s.name                  = 'MWLogsPlugin'
    s.version               = '1.2.0'
  s.summary               = 'A plugin for AppRail.'
  s.homepage              = 'https://app-rail.io'
  s.license               = { :type => 'Copyright', :file => 'LICENSE' }
  s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPluginRepository-iOS/main/MWLogsPlugin/1.2.0/MWLogsPlugin.zip' }
  s.platform              = :ios
  s.swift_version         = '5'
    s.ios.deployment_target = '15.0'
  s.default_subspecs      = 'Core'

  s.subspec 'Core' do |cs|
        cs.dependency            'MobileWorkflow', '~> 2.1.0'
        cs.vendored_frameworks   = ['MWLogsPlugin.xcframework', 'CrashReporter.xcframework']
        cs.preserve_paths        = ['MWLogsPlugin.xcframework', 'CrashReporter.xcframework']



  end
end
