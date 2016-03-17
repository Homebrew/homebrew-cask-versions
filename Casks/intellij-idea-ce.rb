cask 'intellij-idea-ce' do
  version '2016.1'
  sha256 '8f9b59770922ee9118d051a297db0ab6832e4650dca5bae6926be438da085577'

  url "https://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  name 'IntelliJ IDEA Community Edition'
  homepage 'https://www.jetbrains.com/idea/'
  license :apache

  app 'IntelliJ IDEA CE.app'

  zap delete: [
                '~/Library/Application Support/IdeaIC2016.1',
                '~/Library/Preferences/IdeaIC2016.1',
                '~/Library/Caches/IdeaIC2016.1',
                '~/Library/Logs/IdeaIC2016.1',
              ]
end
