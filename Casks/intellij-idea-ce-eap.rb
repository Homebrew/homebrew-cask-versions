cask 'intellij-idea-ce-eap' do
  version '2016.2-162.1121.10'
  sha256 '05bd129750eb872f279390a75df04b3c3bcba912e0e68fae86fddb0484623bfc'

  url "https://download.jetbrains.com/idea/ideaIC-#{version.sub(%r{.*?-}, '')}.dmg"
  name 'IntelliJ IDEA Community Edition EAP'
  name 'IntelliJ IDEA CE EAP'
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+2016.2+EAP'
  license :apache

  auto_updates true
  conflicts_with cask: 'intellij-idea-ce'

  app 'IntelliJ IDEA CE.app'

  uninstall delete: '/usr/local/bin/idea'

  zap delete: [
                "~/Library/Application Support/IdeaIC#{version.major_minor}",
                "~/Library/Preferences/IdeaIC#{version.major_minor}",
                "~/Library/Caches/IdeaIC#{version.major_minor}",
                "~/Library/Logs/IdeaIC#{version.major_minor}",
              ]
end
