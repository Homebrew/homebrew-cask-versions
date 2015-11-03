cask :v1 => 'pycharm-bundled-jdk' do
  version '5.0'
  sha256 '21a1e8079d000580b5016e6459a87e29c413bdb6b1100308cfe815c1346913e9'

  url "https://download.jetbrains.com/python/pycharm-professional-#{version}-jdk-bundled.dmg"
  name 'PyCharm'
  homepage 'https://www.jetbrains.com/pycharm/'
  license :commercial

  app 'PyCharm.app'

  zap :delete => [
                  '~/Library/Preferences/com.jetbrains.pycharm.plist',
                  '~/Library/Preferences/PyCharm40',
                  '~/Library/Application Support/PyCharm40',
                  '~/Library/Caches/PyCharm40',
                  '~/Library/Logs/PyCharm40',
                  '/usr/local/bin/charm',
                 ]

  conflicts_with :cask => 'pycharm'
end
