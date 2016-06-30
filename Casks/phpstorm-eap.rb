cask 'phpstorm-eap' do
  version '162.1120.13'
  sha256 '6582f962045d0c815521a48c45a94d9876cdbd44341bd2c8e2f34f5d6cff2bc8'

  url "https://download.jetbrains.com/webide/PhpStorm-EAP-#{version}.dmg"
  name 'PhpStorm EAP'
  homepage 'https://confluence.jetbrains.com/display/PhpStorm/PhpStorm+Early+Access+Program'
  license :commercial

  conflicts_with cask: 'phpstorm'

  app 'PhpStorm 2016.2 EAP.app'

  uninstall delete: '/usr/local/bin/pstorm'

  zap delete: [
                '~/Library/Preferences/PhpStorm2016.2',
                '~/Library/Caches/PhpStorm2016.2',
                '~/Library/Logs/PhpStorm2016.2',
                '~/Library/Application Support/PhpStorm2016.2',
              ]
end
