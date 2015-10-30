cask :v1 => 'appcode-eap' do
  version '143.380.24'
  sha256 'be8a3eb16064599e8d4f6c1ff523f6fad6ac75123c91775ae0ac1864d47eb32d'

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
