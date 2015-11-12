cask :v1 => 'phpstorm-eap' do
  version '143.790'
  sha256 'df29923e1d9e95df63390c96d988f19f6f25e9e62042cfb3c7f6a2e396ce29bb'

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
