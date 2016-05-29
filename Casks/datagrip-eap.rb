cask 'datagrip-eap' do
  version '2016.1.1'
  sha256 '78976fcf73155e3e4b0f0defae550ddf7af6517d656d199e53f7f10dd89e02fb'

  url "https://download.jetbrains.com/datagrip/datagrip-#{version}.dmg"
  name 'DataGrip'
  homepage 'https://confluence.jetbrains.com/display/DBE/DataGrip+2016.1+EAP'
  license :commercial

  conflicts_with cask: 'datagrip'

  app 'DataGrip.app'

  zap delete: [
                "~/.DataGrip#{version.major_minor}",
                "~/Library/Preferences/DataGrip#{version.major_minor}",
                "~/Library/Application Support/DataGrip#{version.major_minor}",
                "~/Library/Caches/DataGrip#{version.major_minor}",
                "~/Library/Logs/DataGrip#{version.major_minor}",
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
