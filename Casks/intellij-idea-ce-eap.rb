cask 'intellij-idea-ce-eap' do
  version '162.844.8'
  sha256 '984f4b30aaeff98301ed0bc50e5ded298104ca0c87f82f97e0085189c8b45b0c'

  url "https://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  name 'IntelliJ IDEA Community Edition EAP'
  name 'IntelliJ IDEA CE EAP'
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+2016.2+EAP'
  license :apache

  conflicts_with cask: 'intellij-idea-ce'

  app 'IntelliJ IDEA 2016.2 CE EAP.app'

  uninstall delete: '/usr/local/bin/idea'

  zap delete: [
                "~/Library/Application Support/IdeaIC#{version.major_minor}",
                "~/Library/Preferences/IdeaIC#{version.major_minor}",
                "~/Library/Caches/IdeaIC#{version.major_minor}",
                "~/Library/Logs/IdeaIC#{version.major_minor}",
              ]
end
