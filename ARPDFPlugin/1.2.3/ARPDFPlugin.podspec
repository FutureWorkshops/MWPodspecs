Pod::Spec.new do |s|
  s.name                  = 'ARPDFPlugin'
    s.version               = '1.2.3'
  s.summary               = 'A plugin for AppRail.'
  s.homepage              = 'https://app-rail.io'
  s.license               = { :type => 'Copyright', :file => 'LICENSE' }
  s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPluginRepository-iOS/main/ARPDFPlugin/1.2.3/ARPDFPlugin.zip' }
  s.platform              = :ios
  s.swift_version         = '5'
    s.ios.deployment_target = '17.1'
  s.default_subspecs      = 'Core'

  s.subspec 'Core' do |cs|
        cs.dependency            'MobileWorkflow', '~> 2.1.29'
        cs.vendored_frameworks   = 'ARPDFPlugin.xcframework'
        cs.preserve_paths        = ['ARPDFPlugin.xcframework']

  end
end
