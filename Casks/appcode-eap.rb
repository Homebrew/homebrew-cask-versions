cask 'appcode-eap' do
  version '191.5109.16'
  sha256 'e1eb95a61b0e131241fb69cd145ee30ef40d25b8b8174ce3797b6c8e920436da'

  url "https://download.jetbrains.com/objc/AppCode-#{version}.dmg"
  name 'AppCode EAP'
  homepage 'https://www.jetbrains.com/objc/nextversion/'
  license :commercial

  conflicts_with cask: 'appcode'

  app 'AppCode 2019.1 EAP.app'

  zap delete: [
                '~/Library/Preferences/AppCode2019.1',
                '~/Library/Application Support/AppCode2019.1',
                '~/Library/Caches/AppCode2019.1',
                '~/Library/Logs/AppCode2019.1',
              ]
end
