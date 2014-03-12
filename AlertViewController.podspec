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