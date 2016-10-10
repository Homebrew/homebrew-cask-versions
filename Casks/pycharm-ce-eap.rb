cask 'pycharm-ce-eap' do
  version '2016.3,163.5219.9'
  sha256 'aa0f3a61f3a4fbaa08c0b582009040ebd5ec2b53c789a1ed5ea6e8afb3abfe02'

  url "https://download.jetbrains.com/python/pycharm-community-#{version.after_comma}.dmg"
  name 'Jetbrains PyCharm Community Edition EAP'
  name 'PyCharm CE EAP'
  homepage 'https://confluence.jetbrains.com/display/PYH/JetBrains+PyCharm+Preview+(EAP)'

  conflicts_with cask: 'pycharm-ce'

  app "PyCharm CE #{version.before_comma} EAP.app"

  uninstall delete: '/usr/local/bin/charm'

  zap delete: [
                "~/Library/Preferences/PyCharm#{version.before_comma.major_minor}",
                "~/Library/Application Support/PyCharm#{version.before_comma.major_minor}",
                "~/Library/Caches/PyCharm#{version.before_comma.major_minor}",
                "~/Library/Logs/PyCharm#{version.before_comma.major_minor}",
              ]
end
