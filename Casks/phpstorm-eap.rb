cask 'phpstorm-eap' do
  version '2016.1.1'
  sha256 '1c88786b44d14d87878fb905ce3db4105bb60d1680643f90406608a945aed4eb'

  url "https://download.jetbrains.com/webide/PhpStorm-#{version}.dmg"
  name 'PhpStorm'
  homepage 'https://confluence.jetbrains.com/display/PhpStorm/PhpStorm+Early+Access+Program'
  license :commercial

  app 'PhpStorm.app'

  uninstall delete: '/usr/local/bin/pstorm'

  zap delete: [
                "~/.PhpStorm#{version.major_minor}",
                # TODO: expand/glob for '~/Library/Preferences/jetbrains.phpstorm.*.plist',
                "~/Library/Preferences/PhpStorm#{version.major_minor}",
                "~/Library/Caches/PhpStorm#{version.major_minor}",
                "~/Library/Logs/PhpStorm#{version.major_minor}",
                "~/Library/Application Support/PhpStorm#{version.major_minor}",
              ]

  # remove this when this cask is updated to an EAP release
  caveats <<-EOS.undent
    There is currently no EAP preview release. Instead, the latest stable
    version '2016.1.2'
    To receive future EAP releases via the IDE's built-in update system, go to
       Preferences > Appearance & Behavior > System Settings > Updates
    and select the Early Access Program channel.
  EOS
end
