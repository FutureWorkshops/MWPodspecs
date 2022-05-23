Pod::Spec.new do |s|
  s.name                  = 'MWConstructionPlugin'
    s.version               = '1.1.2'
  s.summary               = 'Collection of Steps to aid in construction site related activities.'
  s.homepage              = 'https://www.mobileworkflow.io'
  s.license               = { :type => 'Copyright', :file => 'LICENSE' }
  s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPluginRepository-iOS/main/MWConstructionPlugin/1.1.2/MWConstructionPlugin.zip' }
  s.platform              = :ios
  s.swift_version         = '5'
  s.ios.deployment_target = '13.0'
  s.default_subspecs      = 'Core'

  s.subspec 'Core' do |cs|
    cs.dependency            'MobileWorkflow', '~> 2.0.3'

        cs.vendored_frameworks   = 'MWConstructionPlugin.xcframework'
        cs.preserve_paths        = ['MWConstructionPlugin.xcframework']
  end
end
