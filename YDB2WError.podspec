#
#  Be sure to run `pod spec lint YDB2WError.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         		= "YDB2WError"
  spec.version					= "1.0.1"
  spec.summary      		= "Error component for B2W."
  spec.homepage     		= "https://www.yourdev.com.br"
  spec.license      		= "MIT"
  spec.author       		= { "Douglas Hennrich" => "douglashennrich@yourdev.com.br" }

  spec.platform     		= :ios, "11.0"

  spec.source           = { :git => "https://github.com/Hennrich-Your-Dev/YDB2WError.git", :tag => spec.version }
  spec.source_files     = "YDB2WError/**/*.{h,m,swift,xib,storyboard}"
	spec.resources        = ["YDB2WError/Assets.xcassets"]
  spec.resource_bundles = { "YDB2WError" => ["YDB2WError/Assets.xcassets/*"] }
  spec.swift_version    = "5.0"

end
