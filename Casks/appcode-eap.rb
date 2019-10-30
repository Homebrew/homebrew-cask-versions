cask 'appcode-eap' do
  version '193.4778.23'
  sha256 'd84be323974c0984740e0b62cd702380b57fbc8be774a79abd853fe7b359b969'

  url "https://download.jetbrains.com/objc/AppCode-#{version}.dmg"
  name 'AppCode EAP'
  homepage 'https://www.jetbrains.com/objc/nextversion/'

  conflicts_with cask: 'appcode'

  app 'AppCode 2019.1 EAP.app'

  zap delete: [
                '~/Library/Preferences/AppCode2019.1',
                '~/Library/Application Support/AppCode2019.1',
                '~/Library/Caches/AppCode2019.1',
                '~/Library/Logs/AppCode2019.1',
              ]
end
