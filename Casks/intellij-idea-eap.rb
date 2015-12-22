cask 'intellij-idea-eap' do
  version '144.2151.16'
  sha256 'c6db001761eb9138de86d3387c0d6518c9bfe63eb7dbb087c945918fda548d3f'

  url "https://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  name 'IntelliJ IDEA EAP'
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+16+EAP'
  license :commercial

  app 'IntelliJ IDEA 16 EAP.app'

  zap :delete => [
		  '~/Library/Preferences/com.jetbrains.intellij.plist',
                  '~/Library/Application Support/IntelliJIdea16',
                  '~/Library/Preferences/IntelliJIdea16',
                  '~/Library/Caches/IntelliJIdea16',
                  '~/Library/Logs/IntelliJIdea16',
                 ]
end
