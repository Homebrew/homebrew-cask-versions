cask 'pycharm-ce-eap' do
  version '2017.1,171.2822.19'
  sha256 '0e283eaedc781e4ad8aeea1aab677a8d1e7960f49f517b3de8357860f1b992c2'

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
