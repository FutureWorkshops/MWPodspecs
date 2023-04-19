Pod::Spec.new do |s|
  s.name                  = 'StrAppAdditionsPlugin'
  s.version               = '1.0.0'
  s.summary               = 'Additional steps for StrApp.'
  s.homepage              = 'https://app-rail.io'
  s.license               = { :type => 'Copyright', :file => 'LICENSE' }
  s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPluginRepository-iOS/main/StrAppAdditionsPlugin/1.0.0/StrAppAdditionsPlugin.zip' }
  s.platform              = :ios
  s.swift_version         = '5'
  s.ios.deployment_target = '15.0'
  s.default_subspecs      = 'Core'

  s.subspec 'Core' do |cs|
    cs.dependency           'MobileWorkflow', '~> 2.1.15'
        cs.vendored_frameworks   = 'StrAppAdditionsPlugin.xcframework'
        cs.preserve_paths        = ['StrAppAdditionsPlugin.xcframework']
  end
end
