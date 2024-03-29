Pod::Spec.new do |s|
    s.name                  = 'MWInAppPurchasesPlugin'
    s.version               = '0.1.3'
    s.summary               = 'In-App Purchases plugin for MobileWorkflow on iOS.'
    s.description           = <<-DESC
    In-App Purchases plugin for MobileWorkflow on iOS, using StoreKit. There is 1 step available:
        - MWConsumableInAppPurchasesStep: serves a list of consumable purchases
    DESC
    s.homepage              = 'https://www.mobileworkflow.io'
    s.license               = { :type => 'Copyright', :file => 'LICENSE' }
    s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPluginRepository-iOS/main/MWInAppPurchasesPlugin/0.1.3/MWInAppPurchasesPlugin.zip' }
    s.platform              = :ios
    s.swift_version         = '5'
    s.ios.deployment_target = '13.0'
	s.default_subspecs      = 'Core'
	
    s.subspec 'Core' do |cs|
        cs.dependency            'MobileWorkflow', '~> 2.0.3'
        cs.framework             = 'StoreKit'
        cs.vendored_frameworks   = 'MWInAppPurchasesPlugin.xcframework'
        cs.preserve_paths        = ['MWInAppPurchasesPlugin.xcframework']
    end
end
