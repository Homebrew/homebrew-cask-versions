cask 'intellij-idea-ce-eap' do
  version '162.646.4'
  sha256 '3a518418cf835e1f3a60f7de74349ff98a4ec6c906e4e9080e122fe40d8312f9'

  url "https://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  name 'IntelliJ IDEA Community Edition EAP'
  name 'IntelliJ IDEA CE EAP'
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+2016.2+EAP'
  license :apache

  conflicts_with cask: 'intellij-idea-ce'

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
