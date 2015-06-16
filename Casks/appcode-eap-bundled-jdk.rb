cask :v1 => 'appcode-eap-bundled-jdk' do
  version '141.1399.2'
  sha256 'f9f9b7ae73321a1d4a31aaaed7ebb2d15ada03d65ae9f436756ade1ea29c2f83'

  url "https://download.jetbrains.com/objc/AppCode-#{version}-custom-jdk-bundled.dmg"
  name 'AppCode'
  homepage 'https://confluence.jetbrains.com/display/OBJC/AppCode+EAP'
  license :commercial

  app 'AppCode EAP.app'

  zap :delete => [
                  '~/Library/Preferences/com.jetbrains.AppCode-EAP.plist',
                  '~/Library/Preferences/AppCode32',
                  '~/Library/Application Support/AppCode32',
                  '~/Library/Caches/AppCode32',
                  '~/Library/Logs/AppCode32',
                 ]

  conflicts_with :cask => 'appcode-eap'
end
