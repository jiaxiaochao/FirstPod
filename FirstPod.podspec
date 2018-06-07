Pod::Spec.new do |s|
  s.name         = "FirstPod"
  s.version      = "0.0.1"
  s.summary      = "A short description of FirstPod."
  s.homepage     = "https://github.com/jiaxiaochao/FirstPod"
  s.license      = "MIT"
  s.author             = { "JiaXiaochao" => "578502243@qq.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/jiaxiaochao/FirstPod.git", :tag => s.version }
  s.source_files  = "FirstPod", "FirstPod/**/*.{h,m}"
  s.frameworks = "UIKit", "Foundation"
  s.requires_arc = true
  # s.dependency "JSONKit", "~> 1.4"

end
