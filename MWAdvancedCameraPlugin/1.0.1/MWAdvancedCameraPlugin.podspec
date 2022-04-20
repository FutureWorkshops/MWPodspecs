Pod::Spec.new do |s|
  s.name                  = 'MWAdvancedCameraPlugin'
  s.version               = '1.0.1'
  s.summary               = 'A plugin for AppRail.'
  s.homepage              = 'https://app-rail.io'
  s.license               = { :type => 'Copyright', :file => 'LICENSE' }
  s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPluginRepository-iOS/main/MWAdvancedCameraPlugin/1.0.1/MWAdvancedCameraPlugin.zip' }
  s.platform              = :ios
  s.swift_version         = '5'
  s.ios.deployment_target = '13.0'
  s.default_subspecs      = 'Core'

  s.subspec 'Core' do |cs|
    cs.framework          = 'AVFoundation'
    cs.framework          = 'AVKit'
    cs.dependency           'MobileWorkflow', '~> 2.0.3'
    cs.dependency           'MWCameraPlugin', '~> 0.2.2'
        cs.vendored_frameworks   = 'MWAdvancedCameraPlugin.xcframework'
        cs.preserve_paths        = ['MWAdvancedCameraPlugin.xcframework']
    cs.resources          = ['MWAdvancedCameraPlugin/MWAdvancedCameraPlugin/**/*.strings']
  end
end
