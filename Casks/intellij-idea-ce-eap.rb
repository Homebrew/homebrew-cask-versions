cask 'intellij-idea-ce-eap' do
  version '2016.2.1-162.1447.21'
  sha256 'b821a1dc276fc5683dc8584146bac166a54a9668e70ca062551f0ebd4e674847'

  url "https://download.jetbrains.com/idea/ideaIC-#{version.sub(%r{.*?-}, '')}.dmg"
  name 'IntelliJ IDEA Community Edition EAP'
  name 'IntelliJ IDEA CE EAP'
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+2016.2+EAP'
  license :apache

  auto_updates true

  app 'IntelliJ IDEA CE.app'

  uninstall delete: '/usr/local/bin/idea'

  zap delete: [
                "~/Library/Application Support/IdeaIC#{version.major_minor}",
                "~/Library/Preferences/IdeaIC#{version.major_minor}",
                "~/Library/Caches/IdeaIC#{version.major_minor}",
                "~/Library/Logs/IdeaIC#{version.major_minor}",
              ]
end
