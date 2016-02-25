cask 'intellij-idea-ce' do
  version '15.0.4'
  sha256 'e81f4869670edf3dbc3cd9dc702cd6c36e2601486154f8137d57a869132af6ea'

  url "https://download.jetbrains.com/idea/ideaIC-#{version}-custom-jdk-bundled.dmg"
  name 'IntelliJ IDEA Community Edition'
  homepage 'https://www.jetbrains.com/idea/'
  license :apache

  app 'IntelliJ IDEA 15 CE.app'

  zap delete: [
                '~/Library/Application Support/IdeaIC15',
                '~/Library/Preferences/IdeaIC15',
                '~/Library/Caches/IdeaIC15',
                '~/Library/Logs/IdeaIC15',
              ]
end
