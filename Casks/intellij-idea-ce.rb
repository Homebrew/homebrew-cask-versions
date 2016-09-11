cask 'intellij-idea-ce' do
  version '2016.2.4'
  sha256 '36d7aaf6a10a5c3ac7899c8482449fbe7617d23c4a635086d48b4190551b921b'

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
