cask :v1 => 'pycharm-ce-bundled-jdk' do
  version '4.5.1'
  sha256 '8929fa6e995a895244731a1ac2ab888593decb7d0592ba560280e845ee4ebe31'

  url "https://download.jetbrains.com/python/pycharm-community-#{version}-jdk-bundled.dmg"
  name 'PyCharm Community Edition'
  homepage 'https://www.jetbrains.com/pycharm/'
  license :apache

  app 'PyCharm CE.app'

  zap :delete => [
                  '~/Library/Preferences/com.jetbrains.pycharm.plist',
                  '~/Library/Preferences/PyCharm40',
                  '~/Library/Application Support/PyCharm40',
                  '~/Library/Caches/PyCharm40',
                  '~/Library/Logs/PyCharm40',
                  '/usr/local/bin/charm',
                 ]

  conflicts_with :cask => 'pycharm-ce'
end
