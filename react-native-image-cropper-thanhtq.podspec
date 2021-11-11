require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = 'react-native-image-cropper-thanhtq'
  s.version      = package['version']
  s.summary      = package['description']
  s.author       = package['author']
  s.homepage     = package['homepage']
  s.license      = package['license']
  s.ios.deployment_target = '10.0'
  s.tvos.deployment_target = '10.0'
  s.source       = { git: 'https://github.com/nexlesoft/react-native-image-cropper.git', tag: "v#{s.version}" }
 s.source_files = 'ios/src/*.{h,m}'
   s.platform     = :ios, "8.0"
   s.dependency 'React-Core'
   s.dependency 'React-RCTImage'
   s.dependency 'TOCropViewController'

   s.subspec 'QBImagePickerController' do |qb|
     qb.name             = "QBImagePickerController"
     qb.source_files     = "ios/QBImagePicker/QBImagePicker/*.{h,m}"
     qb.exclude_files    = "ios/QBImagePicker/QBImagePicker/QBImagePicker.h"
     qb.resource_bundles = { "QBImagePicker" => "ios/QBImagePicker/QBImagePicker/*.{lproj,storyboard}" }
     qb.requires_arc     = true
     qb.frameworks       = "Photos"
   end

end
