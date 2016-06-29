cask 'intellij-idea-ce-eap' do
  version '2016.2-162.1120.6'
  sha256 'b1c0eb8f0acbe03251c26b7a03f91f181884524676cee1cfcdab8ae10a57a9df'

  url "https://download.jetbrains.com/idea/ideaIC-#{version.sub(%r{.*?-}, '')}.dmg"
  name 'IntelliJ IDEA Community Edition EAP'
  name 'IntelliJ IDEA CE EAP'
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+2016.2+EAP'
  license :apache

  auto_updates true

  app 'IntelliJ IDEA 2016.2 CE EAP.app'

  uninstall delete: '/usr/local/bin/idea'

  zap delete: [
                "~/Library/Application Support/IdeaIC#{version.major_minor}",
                "~/Library/Preferences/IdeaIC#{version.major_minor}",
                "~/Library/Caches/IdeaIC#{version.major_minor}",
                "~/Library/Logs/IdeaIC#{version.major_minor}",
              ]
end
