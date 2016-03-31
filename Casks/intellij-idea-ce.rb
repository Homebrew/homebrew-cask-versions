cask 'intellij-idea-ce' do
  version '2016.1.1'
  sha256 '37398d288ac124a1d4f16d032c2ec6a45a356b93a7f701e3f71cf0742d78a324'

  url "https://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  name 'IntelliJ IDEA Community Edition'
  homepage 'https://www.jetbrains.com/idea/'
  license :apache

  app 'IntelliJ IDEA CE.app'

  zap delete: [
                '~/Library/Application Support/IdeaIC#{version.major_minor}',
                '~/Library/Preferences/IdeaIC#{version.major_minor}',
                '~/Library/Caches/IdeaIC#{version.major_minor}',
                '~/Library/Logs/IdeaIC#{version.major_minor}',
              ]
end
