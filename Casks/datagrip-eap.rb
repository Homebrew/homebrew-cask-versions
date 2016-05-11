cask 'datagrip-eap' do
  version '2016.1,145.861.1'
  sha256 '63081b1faa524f3ee58be24c274448b6cb0848f1369a019f2457fe811b6a66ba'

  url "https://download.jetbrains.com/datagrip/datagrip-#{version.after_comma}.dmg"
  name 'Datagrip EAP'
  homepage 'https://confluence.jetbrains.com/display/DBE/DataGrip+2016.1+EAP'
  license :commercial

  app "Datagrip #{version.before_comma} EAP.app"

  zap delete: [
                "~/.DataGrip#{version.major_minor}", # TODO: confirm this one
                # TODO: expand/glob for '~/Library/Preferences/jetbrains.datagrip.*.plist',
                "~/Library/Preferences/DataGrip#{version.major_minor}",
                "~/Library/Application Support/DataGrip#{version.major_minor}",
                "~/Library/Caches/DataGrip#{version.major_minor}",
                "~/Library/Logs/DataGrip#{version.major_minor}",
              ]
end
