Pod::Spec.new do |s|
    s.name                  = 'MWContentDisplayPlugin'
    s.version               = '1.7.0'
    s.summary               = 'A content display plugin for MobileWorkflow on iOS.'
    s.description           = <<-DESC
    Grid step for MobileWorkflow on iOS, using UICollectionView compositional layout.
    Stack step for MobileWorkflow on iOS, using SwiftUI for the content layout.
    DESC
    s.homepage              = 'https://www.mobileworkflow.io'
    s.license               = { :type => 'Copyright', :file => 'LICENSE' }
    s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPluginRepository-iOS/main/MWContentDisplayPlugin/1.7.0/MWContentDisplayPlugin.zip' }
    s.platform              = :ios
    s.swift_version         = '5'
    s.ios.deployment_target = '15.0'
	s.default_subspecs      = 'Core'
	
    s.subspec 'Core' do |cs|
        cs.dependency            'MobileWorkflow', '~> 2.1.12'
        cs.dependency            'Kingfisher', '~> 6.0'
        cs.vendored_frameworks   = 'MWContentDisplayPlugin.xcframework'
        cs.preserve_paths        = ['MWContentDisplayPlugin.xcframework']
    end
end
