cask 'phpstorm-eap' do
  version '143.1480'
  sha256 '5dc310e8439376b2a267700b66dc53b85a94b876c1b4899e32773fdc68e9b0a8'

  url "https://download.jetbrains.com/webide/PhpStorm-EAP-#{version}-custom-jdk-bundled.dmg"
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
