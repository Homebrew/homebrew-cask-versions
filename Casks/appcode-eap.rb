cask 'appcode-eap' do
  version '145.184.11'
  sha256 '51ff9c3d7ce9dee6a33f630468bb79c11636eba21f9e3620872b61d880cca9fc'

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
