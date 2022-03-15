Pod::Spec.new do |s|
  s.name                  = 'MWMobilyPlugin'
  s.version               = '1.0.0'
  s.summary               = 'A plugin for AppRail.'
  s.homepage              = 'https://app-rail.io'
  s.license               = { :type => 'Copyright', :file => 'LICENSE' }
  s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPluginRepository-iOS/main/MWMobilyPlugin/1.0.0/MWMobilyPlugin.zip' }
  s.platform              = :ios
  s.swift_version         = '5'
  s.ios.deployment_target = '15.0'
  s.default_subspecs      = 'Core'

  s.subspec 'Core' do |cs|
    cs.dependency           'MobileWorkflow', '~> 2.0.1'
        cs.vendored_frameworks   = 'MWMobilyPlugin.xcframework'
        cs.preserve_paths        = ['MWMobilyPlugin.xcframework']

  end
end
