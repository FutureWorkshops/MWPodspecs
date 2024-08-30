Pod::Spec.new do |s|
  s.name                  = 'UserDefaultsPlugin'
    s.version               = '1.0.3'
  s.summary               = 'A plugin for AppRail.'
  s.homepage              = 'https://app-rail.io'
  s.license               = { :type => 'Copyright', :file => 'LICENSE' }
  s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPluginRepository-iOS/main/UserDefaultsPlugin/1.0.3/UserDefaultsPlugin.zip' }
  s.platform              = :ios
  s.swift_version         = '5'
    s.ios.deployment_target = '17.1'
  s.default_subspecs      = 'Core'

  s.subspec 'Core' do |cs|
        cs.dependency            'MobileWorkflow', '~> 2.1.29'
        cs.vendored_frameworks   = 'UserDefaultsPlugin.xcframework'
        cs.preserve_paths        = ['UserDefaultsPlugin.xcframework']
  end
end
