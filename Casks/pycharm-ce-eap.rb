cask 'pycharm-ce-eap' do
  version '2016.2,162.646.12'
  sha256 'bba580d0bccc54891e548e6ee878266a97f6b1544e4c1ea2a820573b2a92dfab'

  url "https://download.jetbrains.com/python/pycharm-community-#{version.after_comma}.dmg"
  name 'Jetbrains PyCharm Community Edition EAP'
  name 'PyCharm CE EAP'
  homepage 'https://confluence.jetbrains.com/display/PYH/JetBrains+PyCharm+Preview+(EAP)'
  license :apache

  conflicts_with cask: 'pycharm-ce'

  app "PyCharm CE #{version.before_comma} EAP.app"

  uninstall delete: '/usr/local/bin/charm'

  zap delete: [
                "~/.PyCharm#{version.major_minor}",
                "~/Library/Preferences/PyCharm#{version.before_comma.major_minor}",
                "~/Library/Application Support/PyCharm#{version.before_comma.major_minor}",
                "~/Library/Caches/PyCharm#{version.before_comma.major_minor}",
                "~/Library/Logs/PyCharm#{version.before_comma.major_minor}",
              ]
end
