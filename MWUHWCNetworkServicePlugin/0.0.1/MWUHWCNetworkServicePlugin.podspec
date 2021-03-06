Pod::Spec.new do |s|
  s.name                  = 'MWUHWCNetworkServicePlugin'
  s.version               = '0.0.1'
  s.summary               = 'A plugin to perform authentication against a UHWC validation endpoint, given a username and password.'
  s.homepage              = 'https://www.mobileworkflow.io'
  s.license               = { :type => 'Copyright', :file => 'LICENSE' }
  s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
  s.source                = { :git => 'https://github.com', :tag => "#{s.version}" }
  s.platform              = :ios
  s.swift_version         = '5'
  s.ios.deployment_target = '13.0'
  s.default_subspecs      = 'Core'

  s.subspec 'Core' do |cs|
    cs.dependency           'MobileWorkflow'
    cs.resources	  = ['MWUHWCNetworkServicePlugin/MWUHWCNetworkServicePlugin/**/*.xcassets']
    cs.source_files       = 'MWUHWCNetworkServicePlugin/MWUHWCNetworkServicePlugin/**/*.swift'
  end
end
