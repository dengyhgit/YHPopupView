Pod::Spec.new do |s|
  s.name             = "YHPopupView"
  s.version          = "0.1.0"
  s.summary          = "A popup view used on iOS."
  s.description      = <<-DESC
                       It is a popup view used on iOS, which implement by Objective-C.
                       DESC
  s.homepage         = "https://github.com/dengyhgit/YHPopupView"
  # s.screenshots      = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "DengYonghao" => "cbyniypeu@163.com" }
  s.source           = { :git => "https://github.com/dengyhgit/YHPopupView.git", :tag => s.version.to_s }


  s.platform     = :ios, '6.0'
  # s.ios.deployment_target = '5.0'
  # s.osx.deployment_target = '10.7'
  s.requires_arc = true

  s.source_files = 'YHPopupView/*'
  # s.resources = 'Assets'

  # s.ios.exclude_files = 'Classes/osx'
  # s.osx.exclude_files = 'Classes/ios'
  # s.public_header_files = 'Classes/**/*.h'
  s.frameworks = 'Foundation', 'UIKit'

end
