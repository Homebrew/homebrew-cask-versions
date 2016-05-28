cask 'intellij-idea-ce' do
  version '2016.1.2b'
  sha256 '21d2a850ac5da0dfa0197cee85b31d797136629d82cc84d914ca91d503c1d0a1'

  url "https://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  name 'IntelliJ IDEA Community Edition'
  name 'IntelliJ IDEA CE'
  homepage 'https://www.jetbrains.com/idea/'
  license :apache

  conflicts_with cask: 'intellij-idea-ce-eap'

  app 'IntelliJ IDEA CE.app'

  uninstall delete: '/usr/local/bin/idea'

  zap delete: [
                "/~.IdeaIC#{version.major_minor}",
                "~/Library/Application Support/IdeaIC#{version.major_minor}",
                "~/Library/Preferences/IdeaIC#{version.major_minor}",
                "~/Library/Caches/IdeaIC#{version.major_minor}",
                "~/Library/Logs/IdeaIC#{version.major_minor}",
              ]
end
