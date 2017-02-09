cask 'pycharm-ce-eap' do
  version '2017.1,171.3019.3'
  sha256 '76df5ce8c8f5d77f272598293b5d8ba524aa63216e4e375f9a3c82b6259a796a'

  url "https://download.jetbrains.com/python/pycharm-community-#{version.after_comma}.dmg"
  name 'Jetbrains PyCharm Community Edition EAP'
  name 'PyCharm CE EAP'
  homepage 'https://www.jetbrains.com/pycharm/nextversion/'

  conflicts_with cask: 'pycharm-ce'

  app "PyCharm CE #{version.before_comma} EAP.app"

  uninstall delete: '/usr/local/bin/charm'

  zap delete: [
                "~/Library/Application Support/PyCharm#{version.before_comma.major_minor}",
                "~/Library/Caches/PyCharm#{version.before_comma.major_minor}",
                "~/Library/Logs/PyCharm#{version.before_comma.major_minor}",
                "~/Library/Preferences/PyCharm#{version.before_comma.major_minor}",
              ]
end
