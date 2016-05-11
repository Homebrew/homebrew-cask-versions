cask 'pycharm-eap' do
  version '2016.1.3'
  sha256 'd0e414a10d53ff4d74fcd6450c9fcbe3904bd345d2cfe42c95dc6647cc783889'

  url "https://download.jetbrains.com/python/pycharm-professional-#{version}.dmg"
  name 'PyCharm'
  homepage 'https://confluence.jetbrains.com/display/PYH/JetBrains+PyCharm+Preview+(EAP)'
  license :commercial

  conflicts_with cask: 'pycharm'

  app 'PyCharm.app'

  uninstall delete: '/usr/local/bin/charm'

  zap delete: [
                "~/.PyCharm#{version.major_minor}",
                # TODO: expand/glob for '~/Library/Preferences/jetbrains.pycharm.*.plist',
                "~/Library/Preferences/PyCharm#{version.major_minor}",
                "~/Library/Application Support/PyCharm#{version.major_minor}",
                "~/Library/Caches/PyCharm#{version.major_minor}",
                "~/Library/Logs/PyCharm#{version.major_minor}",
              ]

  # remove this when this cask is updated to an EAP release
  caveats <<-EOS.undent
    There is currently no EAP preview release. Instead, the latest stable
    version will be installed.
    To receive future EAP releases via the IDE's built-in update system, go to
       Preferences > Appearance & Behavior > System Settings > Updates
    and select the Early Access Program channel.
  EOS
end
