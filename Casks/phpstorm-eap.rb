cask :v1 => 'phpstorm-eap' do
  version '142.4707'
  sha256 '1764e16f101fea2ec4634419f05b12fa8ce6a05b29643c86d82b22de10a0e745'

  url "https://download.jetbrains.com/webide/PhpStorm-EAP-#{version}-custom-jdk-bundled.dmg"
  name 'PhpStorm EAP'
  homepage 'https://confluence.jetbrains.com/display/PhpStorm/PhpStorm+Early+Access+Program'
  license :commercial

  app 'PhpStorm EAP.app'

  zap :delete => [
                  '~/Library/Application Support/WebIde90',
                  '~/Library/Caches/WebIde90',
                  '~/Library/Logs/WebIde90',
                  '~/Library/Preferences/WebIde90',
                  '~/Library/Preferences/com.jetbrains.PhpStorm-EAP.plist',
                  '~/.WebIde90',
                 ]

end
