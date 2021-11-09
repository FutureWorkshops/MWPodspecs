Pod::Spec.new do |s|
  s.name                  = 'MWChatPlugin'
  s.version               = '0.0.13'
  s.summary               = 'A plugin for MobileWorkflow.'
  s.description           = <<-DESC
  Chat plugin for MobileWorkflow on iOS. There are 2 steps available:
    - MWChatStep: serves a static list of messages from the app file
	- MWNetworkChatStep: serves a dynamic list of messages from a given url
  DESC
  s.homepage              = 'https://www.mobileworkflow.io'
  s.license               = { :type => 'Copyright', :file => 'LICENSE' }
  s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
  s.source                = { :git => 'https://github.com/FutureWorkshops/MWChatPlugin-iOS.git', :tag => "#{s.version}" }
  s.platform              = :ios
  s.swift_version         = '5'
  s.ios.deployment_target = '13.0'
  s.default_subspecs      = 'Core'

  s.subspec 'Core' do |cs|
        cs.dependency            'MobileWorkflow', '~> 1.0.0'
    cs.source_files       = 'MWChatPlugin/MWChatPlugin/**/*.swift'
  end
end
