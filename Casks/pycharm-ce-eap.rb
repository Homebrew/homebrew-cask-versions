cask 'pycharm-ce-eap' do
  version '143.1453.1'
  sha256 '86d09b9d4969d7704ac77d9dbc2bbe437a45983fb4598198c9abce5f7fc589f3'

  url "https://download.jetbrains.com/python/pycharm-community-#{version}-jdk-bundled.dmg"
  name 'PyCharm Community Edition'
  homepage 'https://confluence.jetbrains.com/display/PYH/JetBrains+PyCharm+Preview+(EAP)'
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
