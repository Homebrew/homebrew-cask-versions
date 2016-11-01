cask 'phpstorm-eap' do
  version '2016.3,163.6957.13'
  sha256 '94ebdbe52bfb9fbf7fbd4e2b62cdb3c59d7aa0484aa13a44a3c4527a1d457604'

  url "https://download.jetbrains.com/webide/PhpStorm-EAP-#{version.after_comma}.dmg"
  name 'PhpStorm EAP'
  homepage 'https://confluence.jetbrains.com/display/PhpStorm/PhpStorm+Early+Access+Program'

  conflicts_with cask: 'phpstorm'

  app 'PhpStorm #{version.major_minor} EAP.app'

  uninstall delete: '/usr/local/bin/pstorm'

  zap delete: [
                '~/Library/Preferences/PhpStorm#{version.major_minor}',
                '~/Library/Caches/PhpStorm#{version.major_minor}',
                '~/Library/Logs/PhpStorm#{version.major_minor}',
                '~/Library/Application Support/PhpStorm#{version.major_minor}',
              ]
end
