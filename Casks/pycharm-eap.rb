cask 'pycharm-eap' do
  version '2017.1,171.3780.111'
  sha256 'aeeb9efb861d0cc953179477a326ffa5e19db09192dc13de252030c01126afe1'

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
