cask 'pycharm-eap' do
  version '2017.1,171.2613.10'
  sha256 'a28a707e95d463ae3ffa75ffc04259a11a04f6b6f26da8f5b39f0da14ef4bfd7'

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
