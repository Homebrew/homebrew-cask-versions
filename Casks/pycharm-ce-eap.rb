cask 'pycharm-ce-eap' do
  version '2017.1,171.2613.10'
  sha256 '5c1c19bde1fc1ac8cc1f6b9af78fbc47a4ca1f9104cabffe04634fcb2d7a5dcf'

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
