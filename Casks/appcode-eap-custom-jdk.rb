cask :v1 => 'appcode-eap-custom-jdk' do
  version '3.2.0'
  sha256 'f9f9b7ae73321a1d4a31aaaed7ebb2d15ada03d65ae9f436756ade1ea29c2f83'

  url 'http://download.jetbrains.com/objc/AppCode-141.1399.2-custom-jdk-bundled.dmg'
  homepage 'http://confluence.jetbrains.com/display/OBJC/AppCode+EAP'
  license :commercial

  app 'AppCode EAP.app'
end
