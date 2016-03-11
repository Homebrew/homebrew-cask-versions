cask 'pycharm-ce-eap' do
  version '145.184.12'
  sha256 '9e579016cd670649bfa24717cf336dafa2b59c48077cdf4d9a9e2b2efcd3bdf1'

  url "https://download.jetbrains.com/python/pycharm-community-#{version}.dmg"
  name 'PyCharm Community Edition'
  homepage 'https://confluence.jetbrains.com/display/PYH/JetBrains+PyCharm+Preview+(EAP)'
  license :apache

  conflicts_with cask: 'pycharm-ce'

  app 'PyCharm CE.app'

  zap delete: [
                '~/Library/Preferences/com.jetbrains.pycharm.plist',
                '~/Library/Preferences/PyCharm50',
                '~/Library/Application Support/PyCharm50',
                '~/Library/Caches/PyCharm50',
                '~/Library/Logs/PyCharm50',
                '/usr/local/bin/charm',
              ]
end
