cask 'intellij-idea-ce-eap' do
  version '2016.2-162.1024.1'
  sha256 'de21f3bf5a9a8189d525a1230a248b4180b0eed5a6d74d15cb36b4b655cd8c48'

  url "https://download.jetbrains.com/idea/ideaIC-#{version.sub(%r{.*?-}, '')}.dmg"
  name 'IntelliJ IDEA Community Edition EAP'
  name 'IntelliJ IDEA CE EAP'
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+2016.2+EAP'
  license :apache

  app 'IntelliJ IDEA 2016.2 CE EAP.app'

  uninstall delete: '/usr/local/bin/idea'

  zap delete: [
                "~/Library/Application Support/IdeaIC#{version.major_minor}",
                "~/Library/Preferences/IdeaIC#{version.major_minor}",
                "~/Library/Caches/IdeaIC#{version.major_minor}",
                "~/Library/Logs/IdeaIC#{version.major_minor}",
              ]
end
