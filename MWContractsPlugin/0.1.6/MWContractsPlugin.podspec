Pod::Spec.new do |s|
  s.name                  = 'MWContractsPlugin'
  s.version               = '0.1.6'
  s.summary               = 'A plugin for MobileWorkflow.'
  s.homepage              = 'https://www.mobileworkflow.io'
  s.license               = { :type => 'Copyright', :file => 'LICENSE' }
  s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPluginRepository-iOS/main/MWContractsPlugin/0.1.6/MWContractsPlugin.zip' }
  s.platform              = :ios
  s.swift_version         = '5'
  s.ios.deployment_target = '13.0'
  s.default_subspecs      = 'Core'

  s.subspec 'Core' do |cs|
    cs.dependency            'MobileWorkflow', '~> 2.0.10'
        cs.vendored_frameworks   = 'MWContractsPlugin.xcframework'
        cs.preserve_paths        = ['MWContractsPlugin.xcframework']

  end
end
