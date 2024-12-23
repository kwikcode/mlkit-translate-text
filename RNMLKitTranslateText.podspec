# RNMLKitTranslateText.podspec

require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "RNMLKitTranslateText"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = "https://github.com/kwikcode/mlkit-translate-text"
  # brief license entry:
  s.license      = "MIT"
  # optional - use expanded license entry instead:
  # s.license    = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "Kwikcode" => "kwikcode.dev+github@gmail.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/kwikcode/mlkit-translate-text", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,cc,cpp,m,mm,swift}"
  s.requires_arc = true

  s.dependency "React"
  s.dependency "GoogleMLKit/Translate", "6.0.0"
end

