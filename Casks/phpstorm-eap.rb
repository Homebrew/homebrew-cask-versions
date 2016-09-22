cask 'phpstorm-eap' do
  version '163.4830.18'
  sha256 'c0da11ef3d81672e9fe9437f50cf90ec0097c3dfe1c28c96e9f66d66b1e79ff8'

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
