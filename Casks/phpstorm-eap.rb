cask :v1 => 'phpstorm-eap' do
  version '143.434'
  sha256 '4a318fc83b3dcd000cf7e9e8f2fdda1a5876e4c98965c75b2f195e1ef9f32edc'

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
