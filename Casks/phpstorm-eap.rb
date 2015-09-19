cask :v1 => 'phpstorm-eap' do
  version '142.4912'
  sha256 '399f96606592a33ecc7969853d824f04dba9fe36013d43e176e56570124b841d'

  url "https://download.jetbrains.com/webide/PhpStorm-EAP-#{version}.dmg"
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
