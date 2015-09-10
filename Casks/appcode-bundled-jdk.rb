cask :v1 => 'appcode-bundled-jdk' do
  version '3.2'
  sha256 'd617f919f9dcb0033c74f3168efb705d6fb2fa5471368df4ef68fc1c18f10a35'
  
  url "https://download.jetbrains.com/objc/AppCode-#{version}-custom-jdk-bundled.dmg"
  name 'AppCode'
  homepage 'https://www.jetbrains.com/objc/'
  license :commercial

  app 'AppCode.app'

  zap :delete => [
                  '~/Library/Preferences/com.jetbrains.AppCode.plist',
                  '~/Library/Preferences/AppCode32',
                  '~/Library/Application Support/AppCode32',
                  '~/Library/Caches/AppCode32',
                  '~/Library/Logs/AppCode32',
                 ]

  conflicts_with :cask => [
                           'appcode',
                           'appcode-eap',
                           'appcode-eap-bundled-jdk',
                          ]
end
