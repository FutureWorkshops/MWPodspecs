Pod::Spec.new do |s|
  s.name                  = 'MWWelbaChallengeRecorderPlugin'
  s.version               = '1.1.0'
  s.summary               = 'A plugin for MobileWorkflow.'
  s.homepage              = 'https://www.mobileworkflow.io'
  s.license               = { :type => 'Copyright', :file => 'LICENSE' }
  s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
  s.source                = { :git => 'https://github.com/FutureWorkshops/MWWelbaChallengeRecorderPlugin-iOS.git', :tag => "#{s.version}" }
  s.platform              = :ios
  s.swift_version         = '5'
  s.ios.deployment_target = '13.0'
  s.default_subspecs      = 'Core'

  s.subspec 'Core' do |cs|
    cs.dependency           'MobileWorkflow', '~> 1.0.0'
    cs.dependency           'MWHealthPlugin', '~> 1.1.1'
    cs.source_files       = 'MWWelbaChallengeRecorderPlugin/MWWelbaChallengeRecorderPlugin/**/*.swift'
  end
end
