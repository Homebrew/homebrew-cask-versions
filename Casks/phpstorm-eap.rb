cask 'phpstorm-eap' do
  version '163.6512.15'
  sha256 '8795d9c220aa13a9006f15ee85a5eda8efe69ec4ba627bbc68ec34b3acf56845'

  url "https://download.jetbrains.com/webide/PhpStorm-EAP-#{version}.dmg"
  name 'PhpStorm EAP'
  homepage 'https://confluence.jetbrains.com/display/PhpStorm/PhpStorm+Early+Access+Program'

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
