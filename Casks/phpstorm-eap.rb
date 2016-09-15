cask 'phpstorm-eap' do
  version '163.4396.15'
  sha256 'f22ab89a38123312bdf266427b1be419c01ea528848e0f35593319f359f7e8fd'

  url "https://download.jetbrains.com/webide/PhpStorm-EAP-#{version}.dmg"
  name 'PhpStorm EAP'
  homepage 'https://confluence.jetbrains.com/display/PhpStorm/PhpStorm+Early+Access+Program'
  license :commercial

  conflicts_with cask: 'phpstorm'

  app 'PhpStorm 2016.3 EAP.app'

  uninstall delete: '/usr/local/bin/pstorm'

  zap delete: [
                '~/Library/Preferences/PhpStorm2016.2',
                '~/Library/Caches/PhpStorm2016.2',
                '~/Library/Logs/PhpStorm2016.2',
                '~/Library/Application Support/PhpStorm2016.2',
              ]
end
