package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name             = "ImageCropperManager"
  s.version          = package['version']
  s.summary          = package["description"]
  s.requires_arc = true
  s.license      = 'MIT'
  s.homepage     = 'n/a'
  s.authors      = { "" => "" }
  s.source       = { :git => "https://github.com/nexlesoft/react-native-image-cropper.git", :tag => "v#{s.version}"}
  s.source_files = 'ios/src/*.{h,m}'
  s.platform     = :ios, "8.0"
  s.dependency 'React'
  s.dependency 'TOCropViewController'

end
