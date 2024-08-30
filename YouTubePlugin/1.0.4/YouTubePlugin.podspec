Pod::Spec.new do |s|
  s.name                  = 'YouTubePlugin'
    s.version               = '1.0.4'
  s.summary               = 'A plugin for AppRail.'
  s.homepage              = 'https://app-rail.io'
  s.license               = { :type => 'Copyright', :file => 'LICENSE' }
  s.author                = { 'Future Workshops' => 'info@futureworkshops.com' }
    s.source                = { :http => 'https://raw.githubusercontent.com/FutureWorkshops/AppRailPluginRepository-iOS/main/YouTubePlugin/1.0.4/YouTubePlugin.zip' }
  s.platform              = :ios
  s.swift_version         = '5'
    s.ios.deployment_target = '17.1'
  s.default_subspecs      = 'Core'

  s.subspec 'Core' do |cs|
        cs.dependency            'MobileWorkflow', '~> 2.1.29'
    cs.dependency           'youtube-ios-player-helper', '~> 1.0.4'
        cs.vendored_frameworks   = 'YouTubePlugin.xcframework'
        cs.preserve_paths        = ['YouTubePlugin.xcframework']
  end
end
