cask 'datagrip-eap' do
  version '2016.1,145.735.3'
  sha256 '1307ec1722361c8777f1f2f7a57977e246b161d5969ce24d3c0caabdb7212370'

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
