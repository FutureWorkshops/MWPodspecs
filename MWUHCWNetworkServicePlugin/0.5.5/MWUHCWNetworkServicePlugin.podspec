Pod::Spec.new do |s|
  s.name                  = 'MWUHCWNetworkServicePlugin'
    s.version               = '0.5.5'
  s.summary               = 'A plugin to perform authentication against a UHWC validation endpoint, given a username and password.'
  s.homepage              = 'https://www.mobileworkflow.io'
  s.license               = { :type => 'Copyright', :file => 'LICENSE' }
  s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPluginRepository-iOS/main/MWUHCWNetworkServicePlugin/0.5.5/MWUHCWNetworkServicePlugin.zip' }
  s.platform              = :ios
  s.swift_version         = '5'
    s.ios.deployment_target = '17.1'
  s.default_subspecs      = 'Core'

  s.subspec 'Core' do |cs|
        cs.dependency            'MobileWorkflow', '~> 2.1.29'
    cs.dependency        'MWAppAuthPlugin'

        cs.vendored_frameworks   = 'MWUHCWNetworkServicePlugin.xcframework'
        cs.preserve_paths        = ['MWUHCWNetworkServicePlugin.xcframework']
  end
end
