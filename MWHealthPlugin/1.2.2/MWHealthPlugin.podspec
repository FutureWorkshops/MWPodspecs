Pod::Spec.new do |s|
  s.name                  = 'MWHealthPlugin'
    s.version               = '1.2.2'
  s.summary               = 'A plugin for MobileWorkflow.'
  s.description           = <<-DESC
  Health Plugin for MobileWorkflow on iOS, based on HealthKit. There is 1 step and 1 service available:
      - HealthPermissionsStep: requests permission in order to access deveice health data
	  - HealthService: provides authorization requests, workout fetch, workout creation, quantity samples fetch  and statistics fetch based on a timeline
  DESC
  s.homepage              = 'https://www.mobileworkflow.io'
  s.license               = { :type => 'Copyright', :file => 'LICENSE' }
  s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPluginRepository-iOS/main/MWHealthPlugin/1.2.2/MWHealthPlugin.zip' }
  s.platform              = :ios
  s.swift_version         = '5'
  s.ios.deployment_target = '13.0'
  s.default_subspecs      = 'Core'

  s.subspec 'Core' do |cs|
    cs.dependency           'MobileWorkflow', '~> 2.0.3'
    cs.framework          = 'HealthKit'
        cs.vendored_frameworks   = 'MWHealthPlugin.xcframework'
        cs.preserve_paths        = ['MWHealthPlugin.xcframework']
    cs.resource           = ['MWHealthPlugin/MWHealthPlugin/**/*.xcassets'] 
  end
end
