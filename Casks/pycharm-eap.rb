cask 'pycharm-eap' do
  version '2017.1,171.3780.47'
  sha256 '45524488a020824fa13512cb4303e0769985247f9183e301528aff5c594390b5'

  url "https://download.jetbrains.com/python/pycharm-professional-#{version.after_comma}.dmg"
  name 'PyCharm EAP'
  homepage 'https://www.jetbrains.com/pycharm/nextversion/'

  conflicts_with cask: 'pycharm'

  app "PyCharm #{version.before_comma} EAP.app"

  uninstall delete: '/usr/local/bin/charm'

  zap delete: [
                "~/Library/Application Support/PyCharm#{version.before_comma}",
                "~/Library/Caches/PyCharm#{version.before_comma}",
                "~/Library/Logs/PyCharm#{version.before_comma}",
                "~/Library/Preferences/PyCharm#{version.before_comma}",
              ]
end
