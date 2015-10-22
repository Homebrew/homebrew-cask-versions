cask :v1 => 'pycharm-eap' do
  version '143.414'
  sha256 '188b7400183e7ab3fc7d9199f036ab5032f9bdb785f64a0506240323eca3a211'

  url "http://download.jetbrains.com/python/pycharm-professional-#{version}-jdk-bundled.dmg"
  name 'PyCharm'
  homepage 'http://confluence.jetbrains.com/display/PYH/JetBrains+PyCharm+Preview+(EAP)'
  license :commercial

  app 'PyCharm.app'

  zap :delete => [
                  '~/Library/Preferences/com.jetbrains.pycharm.plist',
                  '~/Library/Preferences/PyCharm50',
                  '~/Library/Application Support/PyCharm50',
                  '~/Library/Caches/PyCharm50',
                  '~/Library/Logs/PyCharm50',
                  '/usr/local/bin/charm',
                 ]

  conflicts_with :cask => 'pycharm'
end
