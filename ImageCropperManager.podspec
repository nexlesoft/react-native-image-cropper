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
  s.subspec 'TOCropViewController' do |qb|
      qb.name             = "TOCropViewController"
      qb.source_files     = "ios/TOCropViewController/TOCropViewController/*.{h,m}"
      qb.exclude_files    = "ios/TOCropViewController/TOCropViewController/TOCropViewController.h"
      qb.resource_bundles = { "TOCropViewController" => "ios/TOCropViewController/Resources/*.{lproj,storyboard}" }
      qb.requires_arc     = true
      qb.frameworks       = "Photos"
    end

end
