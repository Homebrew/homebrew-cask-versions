cask 'phpstorm-eap' do
  version '144.3168'
  sha256 '5b9a0b1584badbf155c627a2ff6c8c9dfcad3e907e4b127c41fc1ed3a9d41bec'

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
