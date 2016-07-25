cask 'pycharm-ce' do
  version '2016.2'
  sha256 '68d2b97105afed11dc3820ba1eb1393b4968c1761e4b0962e6c1cd9f610814da'

  url "https://download.jetbrains.com/python/pycharm-community-#{version}.dmg"
  name 'Jetbrains PyCharm Community Edition'
  name 'PyCharm CE'
  homepage 'https://www.jetbrains.com/pycharm'
  license :apache

  conflicts_with cask: 'pycharm-ce-eap'

  app 'PyCharm CE.app'

  uninstall delete: '/usr/local/bin/charm'

  zap delete: [
                "~/Library/Caches/PyCharm#{version.major_minor}",
                "~/Library/Preferences/PyCharm#{version.major_minor}",
                "~/Library/Logs/PyCharm#{version.major_minor}",
                "~/Library/Application Support/PyCharm#{version.major_minor}",
              ]
end
