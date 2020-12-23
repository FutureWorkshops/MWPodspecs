# MWPodspecs

This is the main repo to hold the Podspecs related to MobileWorkflow Core and its plugins.

## Using the Podspecs

To add this repo to your machine, simply run: 

```sh
$ pod repo add MobileWorkflow git@github.com:FutureWorkshops/MWPodspecs.git
```

To add this repo as a source on your Podfile:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
source 'https://github.com/FutureWorkshops/MWPodspecs.git'
```

## Publishing a new Podspec

To publish a new podspec into this repo, just create a new version folder insinde the plugin folder, and copy the latest .podspec file into the corresponding folder.