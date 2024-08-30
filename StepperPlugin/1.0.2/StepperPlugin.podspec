Pod::Spec.new do |s|
  s.name                  = 'StepperPlugin'
    s.version               = '1.0.2'
  s.summary               = 'A plugin for AppRail.'
  s.homepage              = 'https://app-rail.io'
  s.license               = { :type => 'Copyright', :file => 'LICENSE' }
  s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPluginRepository-iOS/main/StepperPlugin/1.0.2/StepperPlugin.zip' }
  s.platform              = :ios
  s.swift_version         = '5'
    s.ios.deployment_target = '17.1'
  s.default_subspecs      = 'Core'

  s.subspec 'Core' do |cs|
        cs.dependency            'MobileWorkflow', '~> 2.1.29'
    cs.dependency           'StepperView', '~> 1.6.7'
        cs.vendored_frameworks   = 'StepperPlugin.xcframework'
        cs.preserve_paths        = ['StepperPlugin.xcframework']
  end
end
