
Pod::Spec.new do |s|
  s.name         = "RNICloudUserToken"
  s.version      = "1.0.0"
  s.summary      = "RNICloudUserToken"
  s.description  = <<-DESC
                  RNICloudUserToken
                   DESC
  s.homepage     = ""
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "author" => "mikael.adlers@gmail.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/mikaeladlers/react-native-icloud-user-token.git", :tag => "master" }
  s.source_files  = "RNICloudUserToken/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  