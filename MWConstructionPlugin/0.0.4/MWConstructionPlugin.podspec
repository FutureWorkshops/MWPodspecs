Pod::Spec.new do |s|
  s.name                  = 'MWConstructionPlugin'
  s.version               = '0.0.1'
  s.summary               = 'Collection of Steps to aid in construction site related activities.'
  s.homepage              = 'https://www.mobileworkflow.io'
  s.license               = { :type => 'Copyright', :file => 'LICENSE' }
  s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
  s.source                = { :git => 'https://github.com/FutureWorkshops/MWConstructionPlugin-iOS', :tag => "#{s.version}" }
  s.platform              = :ios
  s.swift_version         = '5'
  s.ios.deployment_target = '13.0'
  s.default_subspecs      = 'Core'

  s.subspec 'Core' do |cs|
    cs.dependency           'MobileWorkflow'
    cs.resources	  = ['MWConstructionPlugin/MWConstructionPlugin/**/*.xcassets']
    cs.source_files       = 'MWConstructionPlugin/MWConstructionPlugin/**/*.swift'
  end
end
