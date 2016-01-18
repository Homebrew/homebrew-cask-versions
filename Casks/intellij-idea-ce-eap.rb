cask 'intellij-idea-ce-eap' do
  version '144.2925.2'
  sha256 '2dacc14f5c1854ba830205624c56c32f53ba6dc200b02e0dddf04133fed1af2c'

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
