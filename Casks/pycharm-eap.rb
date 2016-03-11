cask 'pycharm-eap' do
  version '145.184.12'
  sha256 'f4a46bd64ac258d2686923f78e17e85c21d0097a412a585fd14c28dbc08c20d5'

  url "https://download.jetbrains.com/python/pycharm-professional-#{version}.dmg"
  name 'PyCharm'
  homepage 'https://confluence.jetbrains.com/display/PYH/JetBrains+PyCharm+Preview+(EAP)'
  license :commercial

  conflicts_with cask: 'pycharm'

  app 'PyCharm 5.1 EAP.app'

  zap delete: [
                '~/Library/Preferences/com.jetbrains.pycharm.plist',
                '~/Library/Preferences/PyCharm50',
                '~/Library/Application Support/PyCharm50',
                '~/Library/Caches/PyCharm50',
                '~/Library/Logs/PyCharm50',
                '/usr/local/bin/charm',
              ]
end
