cask :v1 => 'pycharm-bundled-jdk' do
  version '4.5.4'
  sha256 'c0ea0f9caea553ec50c6a8a112fd2587e3c786de47979655695666d9f1cd31ef'

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
