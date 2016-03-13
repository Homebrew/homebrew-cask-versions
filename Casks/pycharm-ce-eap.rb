cask 'pycharm-ce-eap' do
  version '145.256.43'
  sha256 '60184759139eab623dc95da26719d793332434f7b4bfec0174613c35b91e6f63'

  url "https://download.jetbrains.com/python/pycharm-community-#{version}.dmg"
  name 'PyCharm Community Edition'
  homepage 'https://confluence.jetbrains.com/display/PYH/JetBrains+PyCharm+Preview+(EAP)'
  license :apache

  conflicts_with cask: 'pycharm-ce'

  app 'PyCharm CE 5.1 EAP.app'

  zap delete: [
                '~/Library/Preferences/com.jetbrains.pycharm.plist',
                '~/Library/Preferences/PyCharm50',
                '~/Library/Application Support/PyCharm50',
                '~/Library/Caches/PyCharm50',
                '~/Library/Logs/PyCharm50',
                '/usr/local/bin/charm',
              ]
end
