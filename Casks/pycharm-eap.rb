cask 'pycharm-eap' do
  version '2016.1.1,145.597.11'
  sha256 '8e1d02bf800ad5ab4696df9d2a0522616ded474bc3ee10816ed0fb5663e19028'

  url "https://download.jetbrains.com/python/pycharm-professional-#{version.after_comma}.dmg"
  name 'PyCharm'
  homepage 'https://confluence.jetbrains.com/display/PYH/JetBrains+PyCharm+Preview+(EAP)'
  license :commercial

  conflicts_with cask: 'pycharm'

  app "PyCharm #{version.before_comma} EAP.app"

  uninstall delete: '/usr/local/bin/charm'

  zap delete: [
                "~/.PyCharm#{version.major_minor}",
                # TODO: expand/glob for '~/Library/Preferences/jetbrains.pycharm.*.plist',
                "~/Library/Preferences/PyCharm#{version.major_minor}",
                "~/Library/Application Support/PyCharm#{version.major_minor}",
                "~/Library/Caches/PyCharm#{version.major_minor}",
                "~/Library/Logs/PyCharm#{version.major_minor}",
              ]
end
