cask 'phpstorm-eap' do
  version '162.844.9'
  sha256 '92697fd9c820a55566caac7b3da504118ed027eb26a35647038b98fc0d30c632'

  url "https://download.jetbrains.com/webide/PhpStorm-EAP-#{version}.dmg"
  name 'PhpStorm EAP'
  homepage 'https://confluence.jetbrains.com/display/PhpStorm/PhpStorm+Early+Access+Program'
  license :commercial

  conflicts_with cask: 'phpstorm'

  app 'PhpStorm 2016.2 EAP.app'

  uninstall delete: '/usr/local/bin/pstorm'

  zap delete: [
                '~/.PhpStorm2016.2',
                '~/Library/Preferences/PhpStorm2016.2',
                '~/Library/Caches/PhpStorm2016.2',
                '~/Library/Logs/PhpStorm2016.2',
                '~/Library/Application Support/PhpStorm2016.2',
              ]
end
