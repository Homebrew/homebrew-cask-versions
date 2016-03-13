cask 'pycharm-eap' do
  version '145.256.43'
  sha256 '9f3ec153c3ee2a7329027b9dc804e69d543bb00862265f19d1eb571bb33235e1'

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
