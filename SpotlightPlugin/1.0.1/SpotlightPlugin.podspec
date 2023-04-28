Pod::Spec.new do |s|
  s.name                  = 'SpotlightPlugin'
  s.version               = '1.0.1'
  s.summary               = 'A plugin for AppRail.'
  s.homepage              = 'https://app-rail.io'
  s.license               = { :type => 'Copyright', :file => 'LICENSE' }
  s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPluginRepository-iOS/main/SpotlightPlugin/1.0.1/SpotlightPlugin.zip' }
  s.platform              = :ios
  s.swift_version         = '5'
  s.ios.deployment_target = '15.0'
  s.default_subspecs      = 'Core'

  s.subspec 'Core' do |cs|
    cs.dependency           'MobileWorkflow', '~> 2.1.16'
        cs.vendored_frameworks   = 'SpotlightPlugin.xcframework'
        cs.preserve_paths        = ['SpotlightPlugin.xcframework']
  end
end
