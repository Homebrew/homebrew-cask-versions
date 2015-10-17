cask :v1 => 'appcode-eap' do
  version '143.249.10'
  sha256 'f7205e34d8e9ecd88aafc06b7a01c6c07c6502ab84508985eafc7f2251ec7a5b'

  url "https://download.jetbrains.com/objc/AppCode-#{version}-custom-jdk-bundled.dmg"
  name 'AppCode'
  homepage 'https://confluence.jetbrains.com/display/OBJC/AppCode+EAP'
  license :commercial

  app 'AppCode EAP.app'

  zap :delete => [
                  '~/Library/Preferences/com.jetbrains.AppCode-EAP.plist',
                  '~/Library/Preferences/AppCode33',
                  '~/Library/Application Support/AppCode33',
                  '~/Library/Caches/AppCode33',
                  '~/Library/Logs/AppCode33',
                 ]

  conflicts_with :cask => [
                           'appcode',
                           'appcode-bundled-jdk',
                          ]
end
