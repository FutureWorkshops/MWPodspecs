Pod::Spec.new do |s|
  s.name                  = 'MWWelbaChallengeRecorderPlugin'
    s.version               = '1.4.0'
  s.summary               = 'A plugin for MobileWorkflow.'
  s.homepage              = 'https://www.mobileworkflow.io'
  s.license               = { :type => 'Copyright', :file => 'LICENSE' }
  s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPluginRepository-iOS/main/MWWelbaChallengeRecorderPlugin/1.4.0/MWWelbaChallengeRecorderPlugin.zip' }
  s.platform              = :ios
  s.swift_version         = '5'
    s.ios.deployment_target = '15.0'
  s.default_subspecs      = 'Core'

  s.subspec 'Core' do |cs|
        cs.dependency            'MobileWorkflow', '~> 2.1.0'
    cs.dependency           'MWHealthPlugin', '~> 1.3.0'
        cs.vendored_frameworks   = 'MWWelbaChallengeRecorderPlugin.xcframework'
        cs.preserve_paths        = ['MWWelbaChallengeRecorderPlugin.xcframework']
  end
end
