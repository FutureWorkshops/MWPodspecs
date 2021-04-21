Pod::Spec.new do |s|
    s.name                  = 'MWServiceNowPlugin'
    s.version               = '0.0.3'
    s.summary               = 'ServiceNow plugin for MobileWorkflow on iOS.'
    s.description           = <<-DESC
    ServiceNow plugin for MobileWorkflow on iOS, containg a ServiceNowAsyncTaskService.
    DESC
    s.homepage              = 'https://www.mobileworkflow.io'
    s.license               = { :type => 'Copyright', :file => 'LICENSE' }
    s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :git => 'https://github.com/FutureWorkshops/MWServiceNowPlugin-iOS.git', :tag => "#{s.version}" }
    s.platform              = :ios
    s.swift_version         = '5'
    s.ios.deployment_target = '13.0'
    s.default_subspecs      = 'Core'
	
    s.subspec 'Core' do |cs|
        cs.dependency            'MobileWorkflow'
        cs.source_files          = 'MWServiceNowPlugin/MWServiceNowPlugin/**/*.swift'
    end
end
