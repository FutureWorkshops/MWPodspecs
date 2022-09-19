Pod::Spec.new do |s|
  s.name                  = 'MWIndoorMapsPlugin'
    s.version               = '1.2.0'
  s.summary               = 'A plugin for MobileWorkflow.'
  s.homepage              = 'https://www.mobileworkflow.io'
  s.license               = { :type => 'Copyright', :file => 'LICENSE' }
  s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPluginRepository-iOS/main/MWIndoorMapsPlugin/1.2.0/MWIndoorMapsPlugin.zip' }
  s.platform              = :ios
  s.swift_version         = '5'
    s.ios.deployment_target = '15.0'
  s.default_subspecs      = 'Core'

  s.subspec 'Core' do |cs|
        cs.dependency            'MobileWorkflow', '~> 2.1.0'
    cs.dependency           'ZIPFoundation', '~> 0.9'
        cs.vendored_frameworks   = 'MWIndoorMapsPlugin.xcframework'
        cs.preserve_paths        = ['MWIndoorMapsPlugin.xcframework']
    cs.resource           = ['MWIndoorMapsPlugin/MWIndoorMapsPlugin/**/*.xcassets'] 
  end
end
