cask 'intellij-idea-ce' do
  version '2016.2.1'
  sha256 'eec7cf38d5d0749d04eb1c6275fac2ec1a26227e97e0ca5d0264352b06c63747'

  url "https://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  name 'IntelliJ IDEA Community Edition'
  name 'IntelliJ IDEA CE'
  homepage 'https://www.jetbrains.com/idea/'
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
