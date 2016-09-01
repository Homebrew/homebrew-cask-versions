cask 'intellij-idea-next-ce-eap' do
  version '2016.3,163.3094.26'
  sha256 'fc5f83092ff30e2cdb723d8a70b49cd5603b22aebb176591090369bd568c72d9'

  url "https://download.jetbrains.com/idea/ideaIC-#{version.after_comma}.dmg"
  name "IntelliJ IDEA #{version.major_minor} Community Edition EAP"
  name "IntelliJ IDEA #{version.major_minor} CE EAP"
  homepage "https://confluence.jetbrains.com/display/IDEADEV/IDEA+#{version.major_minor}+EAP"
  license :apache

  auto_updates true

  app "IntelliJ IDEA #{version.before_comma} CE EAP.app"

  zap delete: [
                "~/Library/Application Support/IdeaIC#{version.major_minor}",
                "~/Library/Preferences/IdeaIC#{version.major_minor}",
                "~/Library/Caches/IdeaIC#{version.major_minor}",
                "~/Library/Logs/IdeaIC#{version.major_minor}",
              ]
end
