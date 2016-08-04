cask 'appcode-eap' do
  version '162.1628.11'
  sha256 '151f04d5caa255a014666e2bec45a668c2a3f76eab4094f01ed8fa9e1ebd26b6'

  url "https://download.jetbrains.com/objc/AppCode-#{version}.dmg"
  name 'AppCode EAP'
  homepage 'https://confluence.jetbrains.com/display/OBJC/AppCode+EAP'
  license :commercial

  conflicts_with cask: 'appcode'

  app 'AppCode 2016.2.1 EAP.app'

  zap delete: [
                '~/Library/Preferences/AppCode2016.2',
                '~/Library/Application Support/AppCode2016.2',
                '~/Library/Caches/AppCode2016.2',
                '~/Library/Logs/AppCode2016.2',
              ]
end
