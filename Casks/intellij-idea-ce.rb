cask 'intellij-idea-ce' do
  version '2016.1.2'
  sha256 'f5cf4c7574e4001f08ff8132dd2ec3ef6d3348b98b280b24b2f533a999cceaef'

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
