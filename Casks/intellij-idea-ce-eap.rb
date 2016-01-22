cask 'intellij-idea-ce-eap' do
  version '144.3143.6'
  sha256 '34f7051dbfbf4373b741ea9909022d8e9a8c8dc2bf43ec749c6ae97618fe5e6b'

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
