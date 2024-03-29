Pod::Spec.new do |s|
    s.name                  = 'MWRegulaPlugin'
    s.version               = '0.1.1'
    s.summary               = 'Regula plugin for MobileWorkflow on iOS.'
    s.description           = <<-DESC
    Regula plugin for MobileWorkflow on iOS for capturing passports, based on https://github.com/regulaforensics/DocumentReader-iOS
    DESC
    s.homepage              = 'https://www.mobileworkflow.io'
    s.license               = { :type => 'Copyright', :file => 'LICENSE' }
    s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPluginRepository-iOS/main/MWRegulaPlugin/0.1.1/MWRegulaPlugin.zip' }
    s.platform              = :ios
    s.swift_version         = '5'
    s.ios.deployment_target = '13.0'
    s.default_subspecs      = 'Core'
    s.pod_target_xcconfig   = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.pod_target_xcconfig   = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }

    s.subspec 'Core' do |cs|
        cs.dependency            'MobileWorkflow', '~> 2.0.0'
	cs.dependency            'DocumentReader', '~> 5.3.0'
	cs.dependency            'DocumentReaderFullRFID', '~> 5.3.0'
        cs.vendored_frameworks   = 'MWRegulaPlugin.xcframework'
        cs.preserve_paths        = ['MWRegulaPlugin.xcframework']
        cs.resource_bundles = {
	    'MWRegulaPlugin' => ['MWRegulaPlugin/MWRegulaPlugin/**/*.dat']
	}
    end
end
