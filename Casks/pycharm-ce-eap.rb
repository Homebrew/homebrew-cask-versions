cask :v1 => 'pycharm-ce-eap' do
  version '142.4957'
  sha256 '17d50688993b914a72487934914353ef396f8baedec0acb0a79d5ce11c4a2dba'

  url "http://download.jetbrains.com/python/pycharm-community-#{version}.dmg"
  name 'PyCharm Community Edition'
  homepage 'http://confluence.jetbrains.com/display/PYH/JetBrains+PyCharm+Preview+(EAP)'
  license :commercial

  app 'PyCharm CE.app'

  zap :delete => [
                  '~/Library/Preferences/com.jetbrains.pycharm.plist',
                  '~/Library/Preferences/PyCharm50',
                  '~/Library/Application Support/PyCharm50',
                  '~/Library/Caches/PyCharm50',
                  '~/Library/Logs/PyCharm50',
                  '/usr/local/bin/charm',
                 ]
end
