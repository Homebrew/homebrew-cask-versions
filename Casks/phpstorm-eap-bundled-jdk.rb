cask :v1 => 'phpstorm-eap' do
  version '142.5282'
  sha256 'c1b364ce6a299877dbcfd244526db543b24265afc6909a5d17d393fedd08474f'

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
