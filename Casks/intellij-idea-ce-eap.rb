cask 'intellij-idea-ce-eap' do
  version '145.184.1'
  sha256 '16f784e54965c4e7fcbaa5629f736f2aadb25bd4d9c8754ef1f2c0e502377f56'

  url "https://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  name 'IntelliJ IDEA EAP :: CE'
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+16+EAP'
  license :apache

  app 'IntelliJ IDEA 16 CE EAP.app'

  zap delete: [
                '~/Library/Application Support/IdeaIC16',
                '~/Library/Caches/IdeaIC16',
                '~/Library/Logs/IdeaIC16',
                '~/Library/Preferences/com.jetbrains.intellij.ce.plist',
                '~/Library/Preferences/IdeaIC16',
                '~/Library/Saved Application State/com.jetbrains.intellij.ce.savedState',
              ]
end
