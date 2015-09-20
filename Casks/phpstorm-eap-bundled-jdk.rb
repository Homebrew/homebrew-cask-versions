cask :v1 => 'phpstorm-eap' do
  version '142.4912'
  sha256 '0a4138da08a4e1a25199f4a2ab90328c5c43c0c7a5ca861ac2af4db8f0bb485b'

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
