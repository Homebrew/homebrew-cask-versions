cask 'pycharm-eap' do
  version '2017.1,171.2014.23'
  sha256 '9d889c5a92b829fa97cb22f09b461839130f0b4bc97c4b71318d57eff90a5219'

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
