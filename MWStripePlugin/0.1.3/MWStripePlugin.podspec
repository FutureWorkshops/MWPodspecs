Pod::Spec.new do |s|
    s.name                  = 'MWStripePlugin'
    s.version               = '0.1.3'
    s.summary               = 'Stripe plugin for MobileWorkflow on iOS.'
    s.description           = <<-DESC
    Stripe plugin for MobileWorkflow on iOS, containg Stripe related steps:
	- MWStripeStep
    DESC
    s.homepage              = 'https://www.mobileworkflow.io'
    s.license               = { :type => 'Copyright', :file => 'LICENSE' }
    s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPluginRepository-iOS/main/MWStripePlugin/0.1.3/MWStripePlugin.zip' }
    s.platform              = :ios
    s.swift_version         = '5'
    s.ios.deployment_target = '13.0'
	s.default_subspecs      = 'Core'
	
    s.subspec 'Core' do |cs|
        cs.dependency            'MobileWorkflow', '~> 2.0.3'
        cs.dependency            'Stripe'
        cs.vendored_frameworks   = 'MWStripePlugin.xcframework'
        cs.preserve_paths        = ['MWStripePlugin.xcframework']

    end
end
