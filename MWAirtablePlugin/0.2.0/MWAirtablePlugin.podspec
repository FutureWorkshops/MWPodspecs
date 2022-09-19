Pod::Spec.new do |s|
    s.name                  = 'MWAirtablePlugin'
    s.version               = '0.2.0'
    s.summary               = 'Airtable plugin for MobileWorkflow on iOS.'
    s.description           = <<-DESC
    Airtable plugin for MobileWorkflow on iOS, containg an AirtableAsyncTaskService.
    DESC
    s.homepage              = 'https://www.mobileworkflow.io'
    s.license               = { :type => 'Copyright', :file => 'LICENSE' }
    s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPluginRepository-iOS/main/MWAirtablePlugin/0.2.0/MWAirtablePlugin.zip' }
    s.platform              = :ios
    s.swift_version         = '5'
    s.ios.deployment_target = '15.0'
    s.default_subspecs      = 'Core'
	
    s.subspec 'Core' do |cs|
        cs.dependency            'MobileWorkflow', '~> 2.1.0'
        cs.dependency            'MWContentDisplayPlugin', '~> 1.6.0'
        cs.vendored_frameworks   = 'MWAirtablePlugin.xcframework'
        cs.preserve_paths        = ['MWAirtablePlugin.xcframework']
    end
end
