cask 'pycharm-ce-eap' do
  version '2016.1.1,145.597.11'
  sha256 '2fa86d695a2f4f161ea84a9c215de2b3de2cf054fa9ed6493fd9b8a228aab8c5'

  url "https://download.jetbrains.com/python/pycharm-community-#{version.after_comma}.dmg"
  name 'PyCharm Community Edition'
  homepage 'https://confluence.jetbrains.com/display/PYH/JetBrains+PyCharm+Preview+(EAP)'
  license :apache

  conflicts_with cask: 'pycharm-ce'

  app "PyCharm CE #{version.major_minor_patch} EAP.app"

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
