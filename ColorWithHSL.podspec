Pod::Spec.new do |s|

  s.name         = "ColorWithHSL"
  s.version      = "0.0.3"
  s.summary      = "Swift Extension to convert HSL colour values into UIColor Objects."

  s.homepage     = "https://github.com/GabrielMassana"
  s.license      = { :type => 'MIT', :file => 'LICENSE.md'}
  s.author       = { "Gabriel Massana" => "gabrielmassana@gmail.com" }

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/GabrielMassana/ColorWithHSL-iOS.git", :tag => s.version, :branch => "master"}
  
  s.source_files  = "ColorWithHSL-iOS/**/*.swift"

  s.requires_arc = true

end

