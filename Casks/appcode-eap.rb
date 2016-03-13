cask 'appcode-eap' do
  version '145.256.45'
  sha256 '2e33648bfda807f2d8e1cf8eea96a169ad420a31b36250030c5414fee5c30f05'

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
