cask 'pycharm-eap' do
  version '143.1453.1'
  sha256 '2d4a004a589790a692eb18b23abc887fb385dcb49607251656e3de1200e1d51b'

  url "https://download.jetbrains.com/python/pycharm-professional-#{version}-jdk-bundled.dmg"
  name 'PyCharm'
  homepage 'https://confluence.jetbrains.com/display/PYH/JetBrains+PyCharm+Preview+(EAP)'
  license :commercial

  conflicts_with :cask => 'pycharm'

  app 'PyCharm.app'

  zap :delete => [
                   '~/Library/Preferences/com.jetbrains.pycharm.plist',
                   '~/Library/Preferences/PyCharm50',
                   '~/Library/Application Support/PyCharm50',
                   '~/Library/Caches/PyCharm50',
                   '~/Library/Logs/PyCharm50',
                   '/usr/local/bin/charm',
                 ]
end
