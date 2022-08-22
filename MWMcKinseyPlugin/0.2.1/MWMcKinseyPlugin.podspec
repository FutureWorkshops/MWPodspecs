Pod::Spec.new do |s|
  s.name                  = 'MWMcKinseyPlugin'
  s.version               = '0.2.1'
  s.summary               = 'A plugin for MobileWorkflow.'
  s.homepage              = 'https://www.mobileworkflow.io'
  s.license               = { :type => 'Copyright', :file => 'LICENSE' }
  s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
  s.source                = { :git => 'https://github.com/FutureWorkshops/MWMcKinseyPlugin-iOS', :tag => "#{s.version}" }
  s.platform              = :ios
  s.swift_version         = '5'
  s.ios.deployment_target = '13.0'
  s.default_subspecs      = 'Core'

  s.subspec 'Core' do |cs|
    cs.dependency           'MobileWorkflow', '~> 2.0.9'
    cs.dependency           'MWLocationTrackingPlugin', '~> 0.6.1'
    cs.source_files       = 'MWMcKinseyPlugin/MWMcKinseyPlugin/**/*.swift'
  end
end
