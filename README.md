# CocoaPods Workshop

Helpful links to get started:

- [http://guides.cocoapods.org/using/getting-started.html](http://guides.cocoapods.org/using/getting-started.html)
- [http://www.raywenderlich.com/12139/introduction-to-cocoapods](http://www.raywenderlich.com/12139/introduction-to-cocoapods)
- [http://theonlylars.com/blog/2013/01/20/cocoapods-creating-a-pod-spec/](http://theonlylars.com/blog/2013/01/20/cocoapods-creating-a-pod-spec/)

[Ask me on Twitter](https://twitter.com/claushoefele)

## Example project

1. Install XCode or command line tools (`xcode-select --install`)
2. `sudo gem install cocoapods` (if needed: `sudo gem update --system`)
2. Create new XCode project
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
	- Project.xcodeproj
	- Project.xcworkspace
	- Podfile
	- Pods/
````
Discussion:

- XCode workspace, projects, Build Phases, Info settings
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
- Reveal -> no configuration based pod
- [Version Eye](https://www.versioneye.com/)
- Private pods: [http://guides.cocoapods.org/making/private-cocoapods.html](http://guides.cocoapods.org/making/private-cocoapods.html)

## Create your own pod
