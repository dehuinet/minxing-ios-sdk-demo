Pod::Spec.new do |s|
 
  s.name         = "crmDemo"
  s.version      = "0.0.1"
  s.summary      = "A short description of crmDemo."
  s.homepage     = 'www.minxing365.com'
  s.license      = 'MIT'
  s.author       = { 'xuym' => 'http://www.minxing365.com' }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/dehuinet/minxing-ios-sdk-demo" }
  s.preserve_path = 'HttpRequest.m', 'foodCell.m'
  s.source_files  = 'crmDemo/*.{h,m}', 'crmDemo/protocols/*.{h,m}'
  s.requires_arc = true
end
