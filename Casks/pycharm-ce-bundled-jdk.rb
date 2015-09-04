cask :v1 => 'pycharm-ce-bundled-jdk' do
  version '4.5.4'
  sha256 '1d73dcad768da8e5bf4de0af928144ed3f4e2ea49dc3e26c8980cf9598b86b8a'

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
