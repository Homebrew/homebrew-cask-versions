cask :v1 => 'pycharm-ce-eap' do
  version '141.2569'
  sha256 'b42161a213316ee6cc3c0fc95f2c8316ddbdda7e3b2d771aa9ae6b520d43d156'

  url "http://download.jetbrains.com/python/pycharm-community-#{version}.dmg"
  name 'PyCharm Community Edition'
  homepage 'http://confluence.jetbrains.com/display/PYH/JetBrains+PyCharm+Preview+(EAP)'
  license :commercial

  app 'PyCharm CE.app'

  zap :delete => [
                  '~/Library/Preferences/com.jetbrains.pycharm.plist',
                  '~/Library/Preferences/PyCharm40',
                  '~/Library/Application Support/PyCharm40',
                  '~/Library/Caches/PyCharm40',
                  '~/Library/Logs/PyCharm40',
                  '/usr/local/bin/charm',
                 ]
end
