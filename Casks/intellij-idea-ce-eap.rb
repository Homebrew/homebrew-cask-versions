cask 'intellij-idea-ce-eap' do
  version '145.844.1'
  sha256 'dedfbccefe1da97b5e8e7950f39f04ac6bab27b89d6f209827e698dcd61ef737'

  url "https://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  name 'IntelliJ IDEA EAP :: CE'
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+2016.1+EAP'
  license :apache

  app 'IntelliJ IDEA 2016.1 CE EAP.app'

  zap delete: [
                '~/Library/Application Support/IdeaIC2016.1',
                '~/Library/Caches/IdeaIC2016.1',
                '~/Library/Logs/IdeaIC2016.1',
                '~/Library/Preferences/com.jetbrains.intellij.ce.plist',
                '~/Library/Preferences/IdeaIC2016.1',
                '~/Library/Saved Application State/com.jetbrains.intellij.ce.savedState',
              ]
end
