package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name             = "RNImageCropperThanhTq"
  s.version          = package['version']
  s.summary          = package["description"]
  s.requires_arc = true
  s.license      = 'MIT'
  s.homepage     = 'n/a'
  s.authors      = { "" => "" }
  s.source       = { :git => "https://github.com/nexlesoft/react-native-image-cropper", :tag => "v#{s.version}"}
  s.source_files = 'ios/src/*.{h,m}'
  s.platform     = :ios, "8.0"
  s.dependency 'React-Core'
  s.dependency 'React-RCTImage'
  s.dependency 'TOCropViewController'

end
