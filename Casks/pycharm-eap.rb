cask 'pycharm-eap' do
  version '2016.3,163.6512.5'
  sha256 '33a3a046ec6743b41b5899c404ae7e6fb3a076fe6063afa4190170171bf23878'

  url "https://download.jetbrains.com/python/pycharm-professional-#{version.after_comma}.dmg"
  name 'PyCharm EAP'
  homepage 'https://confluence.jetbrains.com/display/PYH/JetBrains+PyCharm+Preview+(EAP)'

  conflicts_with cask: 'pycharm'

  app 'PyCharm #{version.before_comma} EAP.app'

  uninstall delete: '/usr/local/bin/charm'

  zap delete: [
                '~/Library/Preferences/PyCharm#{version.before_comma}',
                '~/Library/Application Support/PyCharm#{version.before_comma}',
                '~/Library/Caches/PyCharm#{version.before_comma}',
                '~/Library/Logs/PyCharm#{version.before_comma}',
              ]
end
