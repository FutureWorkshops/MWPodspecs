Pod::Spec.new do |s|
  s.name                  = 'MWAmazonAWSPlugin'
  s.version               = '0.1.1'
  s.summary               = 'An App Rail plugin for Amazon AWS functionality.'
  s.homepage              = 'https://github.com/FutureWorkshops/MWAmazonAWSPlugin-iOS'
  s.license               = { :type => 'Copyright', :file => 'LICENSE' }
  s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
  s.source                = { :git => 'https://github.com/FutureWorkshops/MWAmazonAWSPlugin-iOS', :tag => "#{s.version}" }
  s.platform              = :ios
  s.swift_version         = '5'
  s.ios.deployment_target = '13.0'
  s.default_subspecs      = 'Core'

  s.subspec 'Core' do |cs|
    cs.dependency           'MobileWorkflow', '~> 1.0.0'
    cs.dependency           'AWSS3', '~> 2.26'
    cs.dependency           'GRMustache.swift', '~> 4.0'
    cs.source_files       = 'MWAmazonAWSPlugin/MWAmazonAWSPlugin/**/*.swift'
  end
end
