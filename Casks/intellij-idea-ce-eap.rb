cask 'intellij-idea-ce-eap' do
  version '144.2608.2'
  sha256 '21d2fd409de9924d04a235bf5343033a52d84658fdf96e16d6aab377beab0fea'

  url "https://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  name 'IntelliJ IDEA EAP :: CE'
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+16+EAP'
  license :apache

  app 'IntelliJ IDEA 16 CE EAP.app'

  zap :delete => [
                  '~/Library/Application Support/IdeaIC16',
                  '~/Library/Caches/IdeaIC16',
                  '~/Library/Logs/IdeaIC16',
                  '~/Library/Preferences/com.jetbrains.intellij.ce.plist',
                  '~/Library/Preferences/IdeaIC16',
                  '~/Library/Saved Application State/com.jetbrains.intellij.ce.savedState',
                 ]
end
