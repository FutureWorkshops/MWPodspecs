Pod::Spec.new do |s|
  s.name                  = 'MWWelbaChallengeRecorderPlugin'
  s.version               = '1.3.1'
  s.summary               = 'A plugin for MobileWorkflow.'
  s.homepage              = 'https://www.mobileworkflow.io'
  s.license               = { :type => 'Copyright', :file => 'LICENSE' }
  s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPluginRepository-iOS/main/MWWelbaChallengeRecorderPlugin/1.3.1/MWWelbaChallengeRecorderPlugin.zip' }
  s.platform              = :ios
  s.swift_version         = '5'
  s.ios.deployment_target = '13.0'
  s.default_subspecs      = 'Core'

  s.subspec 'Core' do |cs|
    cs.dependency           'MobileWorkflow', '~> 2.0.3'
    cs.dependency           'MWHealthPlugin', '~> 1.2.0'
        cs.vendored_frameworks   = 'MWWelbaChallengeRecorderPlugin.xcframework'
        cs.preserve_paths        = ['MWWelbaChallengeRecorderPlugin.xcframework']
  end
end
