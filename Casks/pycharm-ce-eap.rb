cask :v1 => 'pycharm-ce-eap' do
  version '143.308'
  sha256 '7ef7f11d8334ec9ccda424de73c98d6498c439de9495f8240e386be1fd68abd8'

  url "http://download.jetbrains.com/python/pycharm-community-#{version}-jdk-bundled.dmg"
  name 'PyCharm Community Edition'
  homepage 'http://confluence.jetbrains.com/display/PYH/JetBrains+PyCharm+Preview+(EAP)'
  license :apache

  app 'PyCharm CE.app'

  zap :delete => [
                  '~/Library/Preferences/com.jetbrains.pycharm.plist',
                  '~/Library/Preferences/PyCharm50',
                  '~/Library/Application Support/PyCharm50',
                  '~/Library/Caches/PyCharm50',
                  '~/Library/Logs/PyCharm50',
                  '/usr/local/bin/charm',
                 ]

  conflicts_with :cask => 'pycharm-ce'
end
