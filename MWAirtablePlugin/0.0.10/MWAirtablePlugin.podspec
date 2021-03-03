Pod::Spec.new do |s|
    s.name                  = 'MWAirtablePlugin'
    s.version               = '0.0.10'
    s.summary               = 'Airtable plugin for MobileWorkflow on iOS.'
    s.description           = <<-DESC
    Airtable plugin for MobileWorkflow on iOS, containg an AirtableAsyncTaskService.
    DESC
    s.homepage              = 'https://www.mobileworkflow.io'
    s.license               = { :type => 'Copyright', :file => 'LICENSE' }
    s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :git => 'https://github.com/FutureWorkshops/MWAirtablePlugin-iOS.git', :tag => "#{s.version}" }
    s.platform              = :ios
    s.swift_version         = '5'
    s.ios.deployment_target = '13.0'
    s.default_subspecs      = 'Core'
	
    s.subspec 'Core' do |cs|
        cs.dependency            'MobileWorkflow'
        cs.dependency            'MWVideoGridPlugin'
        cs.source_files          = 'MWAirtablePlugin/MWAirtablePlugin/**/*.swift'
    end
end
