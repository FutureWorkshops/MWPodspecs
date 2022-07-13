Pod::Spec.new do |s|
  s.name                  = 'MWChatPlugin'
    s.version               = '0.1.3'
  s.summary               = 'A plugin for MobileWorkflow.'
  s.description           = <<-DESC
  Chat plugin for MobileWorkflow on iOS. There are 2 steps available:
    - MWChatStep: serves a static list of messages from the app file
	- MWNetworkChatStep: serves a dynamic list of messages from a given url
  DESC
  s.homepage              = 'https://www.mobileworkflow.io'
  s.license               = { :type => 'Copyright', :file => 'LICENSE' }
  s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPluginRepository-iOS/main/MWChatPlugin/0.1.3/MWChatPlugin.zip' }
  s.platform              = :ios
  s.swift_version         = '5'
  s.ios.deployment_target = '13.0'
  s.default_subspecs      = 'Core'

  s.subspec 'Core' do |cs|
    cs.dependency            'MobileWorkflow', '~> 2.0.3'
        cs.vendored_frameworks   = 'MWChatPlugin.xcframework'
        cs.preserve_paths        = ['MWChatPlugin.xcframework']
  end
end
