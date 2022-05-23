Pod::Spec.new do |s|
  s.name                  = 'MWNHSGeneralPlugin'
    s.version               = '0.1.3'
  s.summary               = 'A plugin for MobileWorkflow.'
  s.homepage              = 'https://www.mobileworkflow.io'
  s.license               = { :type => 'Copyright', :file => 'LICENSE' }
  s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPluginRepository-iOS/main/MWNHSGeneralPlugin/0.1.3/MWNHSGeneralPlugin.zip' }
  s.platform              = :ios
  s.swift_version         = '5'
  s.ios.deployment_target = '13.0'
  s.default_subspecs      = 'Core'

  s.subspec 'Core' do |cs|
    cs.dependency            'MobileWorkflow', '~> 2.0.3'
    cs.dependency           'SwiftyJWT'
        cs.vendored_frameworks   = 'MWNHSGeneralPlugin.xcframework'
        cs.preserve_paths        = ['MWNHSGeneralPlugin.xcframework']

  end
end
