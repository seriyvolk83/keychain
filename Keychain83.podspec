Pod::Spec.new do |s|
  s.name        = "Keychain83"
  s.version     = "0.0.1"
  s.summary     = "Simple kaychain utility for iOS."
  s.homepage    = "https://github.com/seriyvolk83/keychain"
  s.license     = { :type => "MIT" }
  s.authors     = { "seriyvolk83" => "volk@frgroup.ru" }

  s.requires_arc = true
  s.swift_version = "5.0"
  s.ios.deployment_target = "10.0"
  s.source   = { :git => "https://github.com/seriyvolk83/keychain.git", :tag => s.version }
  s.source_files = "Source/*.swift"

  s.default_subspec = "Core"

  s.subspec 'Core' do |cs|
    cs.source_files = "Source/*.swift"
  end

end
