cask :v1 => 'pycharm-bundled-jdk' do
  version '4.5.1'
  sha256 '42bcac6de8c1065b482d74a2a8f3dd6b0b2f21c6835f3423c33c4a135a7f0897'

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
