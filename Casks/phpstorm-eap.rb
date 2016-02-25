cask 'phpstorm-eap' do
  version '145.61.14'
  sha256 '116f645202fdb702903e99e2c848cffa741074ef37701596d290695b2c2ec801'

  url "https://download.jetbrains.com/webide/PhpStorm-EAP-#{version}.dmg"
  name 'PhpStorm EAP'
  homepage 'https://confluence.jetbrains.com/display/PhpStorm/PhpStorm+Early+Access+Program'
  license :commercial

  app 'PhpStorm EAP.app'

  zap delete: [
                '~/Library/Application Support/WebIde100',
                '~/Library/Caches/WebIde100',
                '~/Library/Logs/WebIde100',
                '~/Library/Preferences/WebIde100',
                '~/Library/Preferences/com.jetbrains.PhpStorm-EAP.plist',
                '~/.WebIde100',
              ]
end
