# CocoaPods Workshop

Helpful links to get started:

- [http://guides.cocoapods.org/using/getting-started.html](http://guides.cocoapods.org/using/getting-started.html)
- [http://www.raywenderlich.com/12139/introduction-to-cocoapods](http://www.raywenderlich.com/12139/introduction-to-cocoapods)
- [http://theonlylars.com/blog/2013/01/20/cocoapods-creating-a-pod-spec/](http://theonlylars.com/blog/2013/01/20/cocoapods-creating-a-pod-spec/)

[Ask me on Twitter](https://twitter.com/claushoefele)

## Example project

1. Install Xcode or command line tools (`xcode-select --install`)
2. `sudo gem install cocoapods` (if needed: `sudo gem update --system`)
2. Create new Xcode project
3. `touch Podfile` && `open -e Podfile`
5. `pod install`

*Sample Podfile*

````
platform :ios, '7.0'

pod 'AFNetworking'
````

*Resulting directory layout:*

````
- Project/
	- Project/
		- *.{h,m}
	- Project.xcodeproj
	- Project.xcworkspace
	- Podfile
	- Pods/
		- Pods.xcodeproj 
````
Discussion:

- Xcode workspace, projects, Build Phases, Info settings
- Podfile.lock, Pods directory
- Check in Pods directory
- `pod outdated`, `pod update`

## Tips & tricks

- Alternative directory layout using `xcodeproj`
- Version selector: `<, >, =, ~>`, e.g. `AFNetworking ~> 1.3`
- Head: `pod 'AFNetworking', :head`
- Fork or specific version: `pod 'AFNetworking', :git => 'https://github.com/gowalla/AFNetworking.git', :commit => '082f8319af'`
- git submodules vs Cocoapods
	- `pod 'AFNetworking', :path => '~/Documents/AFNetworking'`
- Binary pods
- Version numbers: 3.0.3a
- Test target only pod -> [https://github.com/optionu/stolpersteine-ios/blob/master/Podfile](https://github.com/optionu/stolpersteine-ios/blob/master/Podfile)
- [Reveal](http://revealapp.com/) -> [no configuration based pod](http://support.revealapp.com/kb/getting-started/integrating-reveal-with-your-ios-app#cocoapods-integration)
- [Version Eye](https://www.versioneye.com/)
- Private pods: [http://guides.cocoapods.org/making/private-cocoapods.html](http://guides.cocoapods.org/making/private-cocoapods.html)

## Create your own pod

1. `pod spec create AlertViewController` or [copy from existing podspec](https://github.com/choefele/CCHMapClusterController/blob/master/CCHMapClusterController.podspec)
2. `open -e AlertViewController.podspec`
3. Add `pod 'AlertViewController', :path => '..'` to your project for testing
3. When done testing, tag source code with version
4. `pod spec lint`
5. [Fork Specs repo](https://github.com/CocoaPods/Specs)
6. Add your podspec and create pull request

*Sample podspec*

````
Pod::Spec.new do |s|
  s.name     = 'AlertViewController'
  s.version  = '0.0.1'
  s.license  = 'MIT'
  s.summary  = 'Cocoapods workshop excercise.'
  s.homepage = 'https://github.com/choefele/cocapods-workshop'
  s.authors  = { 'Claus Höfele' => 'claus@claushoefele.com' }
  s.social_media_url = 'https://twitter.com/claushoefele'
  s.source   = { :git => 'https://github.com/choefele/cocapods-workshop.git', :tag => s.version.to_s }
  s.requires_arc = true

  s.ios.deployment_target = '6.0'

  s.source_files = 'Pod/*.{h,m}'
end
````
