cask 'pycharm-eap' do
  version '162.1812.1'
  sha256 '33a3a046ec6743b41b5899c404ae7e6fb3a076fe6063afa4190170171bf23878'

  url "https://download.jetbrains.com/python/pycharm-professional-#{version}.dmg"
  name 'PyCharm EAP'
  homepage 'https://confluence.jetbrains.com/display/PYH/JetBrains+PyCharm+Preview+(EAP)'

  conflicts_with cask: 'pycharm'

  app 'PyCharm 2016.2 EAP.app'

  uninstall delete: '/usr/local/bin/charm'

  zap delete: [
                '~/Library/Preferences/PyCharm2016.2',
                '~/Library/Application Support/PyCharm2016.2',
                '~/Library/Caches/PyCharm2016.2',
                '~/Library/Logs/PyCharm2016.2',
              ]
end
