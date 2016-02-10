cask 'appcode-eap' do
  version '144.3600.16'
  sha256 'edb1c16e9d1193b8452a71a50777dfe3cff4852d1c1f5e01fb6c1a35ce023f17'

  url "https://download.jetbrains.com/objc/AppCode-#{version}.dmg"
  name 'AppCode'
  homepage 'https://confluence.jetbrains.com/display/OBJC/AppCode+EAP'
  license :commercial

  conflicts_with cask: 'appcode'

  app 'AppCode EAP.app'

  zap delete: [
                '~/Library/Preferences/com.jetbrains.AppCode-EAP.plist',
                '~/Library/Preferences/AppCode34',
                '~/Library/Application Support/AppCode34',
                '~/Library/Caches/AppCode34',
                '~/Library/Logs/AppCode34',
              ]
end
