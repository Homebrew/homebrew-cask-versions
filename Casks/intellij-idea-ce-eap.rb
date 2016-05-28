cask 'intellij-idea-ce-eap' do
  version '162.426.1'
  sha256 '2e69ffbfb7b34944c20363a109b219b42e5315c1249bbc33962620f4b1434414'

  url "https://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  name 'IntelliJ IDEA Community Edition EAP'
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+2016.2+EAP'
  license :apache

  app 'IntelliJ IDEA 2016.2 CE EAP.app'

  uninstall delete: '/usr/local/bin/idea'

  zap delete: [
                "/~.IdeaIC#{version.major_minor}",
                "~/Library/Application Support/IdeaIC#{version.major_minor}",
                "~/Library/Preferences/IdeaIC#{version.major_minor}",
                "~/Library/Caches/IdeaIC#{version.major_minor}",
                "~/Library/Logs/IdeaIC#{version.major_minor}",
              ]
end
