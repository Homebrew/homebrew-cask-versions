cask :v1 => 'pycharm-ce-eap' do
  version '143.1015.4'
  sha256 'cded521e1fc130b74a53aed1fb957d1bb305d4f06077d7a4a5976a91f542b43d'

  url "http://download.jetbrains.com/python/pycharm-community-#{version}-jdk-bundled.dmg"
  name 'PyCharm Community Edition'
  homepage 'http://confluence.jetbrains.com/display/PYH/JetBrains+PyCharm+Preview+(EAP)'
  license :apache

  app 'PyCharm CE.app'

  zap :delete => [
                  '~/Library/Preferences/com.jetbrains.pycharm.plist',
                  '~/Library/Preferences/PyCharm50',
                  '~/Library/Application Support/PyCharm50',
                  '~/Library/Caches/PyCharm50',
                  '~/Library/Logs/PyCharm50',
                  '/usr/local/bin/charm',
                 ]

  conflicts_with :cask => 'pycharm-ce'
end
