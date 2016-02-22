cask 'appcode-eap' do
  version '144.4199.21'
  sha256 '3b1b05d55ba68befda358eaf54d4a37d0b907bd385b1beb4fd3b88a59f4c3278'

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
