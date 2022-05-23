Pod::Spec.new do |s|
  s.name                  = 'MWRFIDScannerPlugin'
    s.version               = '0.1.2'
  s.summary               = 'An NFC tag plugin for MobileWorkflow on iOS.'
  s.description           = <<-DESC
    An NFC plugin for MobileWorkflow on iOS
    DESC
  s.homepage              = 'https://www.mobileworkflow.io'
  s.license               = { :type => 'Copyright', :file => 'LICENSE' }
  s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPluginRepository-iOS/main/MWRFIDScannerPlugin/0.1.2/MWRFIDScannerPlugin.zip' }
  s.platform              = :ios
  s.swift_version         = '5'
  s.ios.deployment_target = '13.0'
  s.default_subspecs      = 'Core'

  s.subspec 'Core' do |cs|
    cs.dependency            'MobileWorkflow', '~> 2.0.3'
        cs.vendored_frameworks   = 'MWRFIDScannerPlugin.xcframework'
        cs.preserve_paths        = ['MWRFIDScannerPlugin.xcframework']
  end
end
