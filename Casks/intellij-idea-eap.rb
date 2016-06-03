cask 'intellij-idea-eap' do
  version '162.646.4'
  sha256 '572ec5b3d7d8961ce75c2d54573cd50c51f2dd70ab369bce3086bc3b347e7fd8'

  url "https://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  name 'IntelliJ IDEA EAP'
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+2016.2+EAP'
  license :commercial

  conflicts_with cask: 'intellij-idea'

  app 'IntelliJ IDEA 2016.2 EAP.app'

  uninstall delete: '/usr/local/bin/idea'

  zap delete: [
                "~/.IntelliJIdea#{version.major_minor}",
                "~/Library/Caches/IntelliJIdea#{version.major_minor}",
                "~/Library/Logs/IntelliJIdea#{version.major_minor}",
                "~/Library/Application Support/IntelliJIdea#{version.major_minor}",
                "~/Library/Preferences/IntelliJIdea#{version.major_minor}",
              ]
end
