cask :v1 => 'phpstorm-eap' do
  version '143.1212'
  sha256 'e8327809b042ad94c5fccbfa17e78278df7ab3999329398c155750cf68f04510'

  url "https://download.jetbrains.com/webide/PhpStorm-EAP-#{version}-custom-jdk-bundled.dmg"
  name 'PhpStorm EAP'
  homepage 'https://confluence.jetbrains.com/display/PhpStorm/PhpStorm+Early+Access+Program'
  license :commercial

  app 'PhpStorm EAP.app'

  zap :delete => [
                  '~/Library/Application Support/WebIde100',
                  '~/Library/Caches/WebIde100',
                  '~/Library/Logs/WebIde100',
                  '~/Library/Preferences/WebIde100',
                  '~/Library/Preferences/com.jetbrains.PhpStorm-EAP.plist',
                  '~/.WebIde100',
                 ]

end
