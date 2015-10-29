cask :v1 => 'intellij-idea-ce-eap' do
  version '143.380.20'
  sha256 'a76fc96066a3e3e4c61412d452aa287b87bb0571d427dc98585edba85e4fa1b8'

  url "https://download.jetbrains.com/idea/ideaIC-#{version}-custom-jdk-bundled.dmg"
  name 'IntelliJ IDEA EAP :: CE'
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+15+EAP'
  license :apache

  app 'IntelliJ IDEA 15 CE EAP.app'

  zap :delete => [
		  '~/Library/Preferences/com.jetbrains.intellij.plist',
                  '~/Library/Application Support/IdeaIC15',
                  '~/Library/Preferences/IdeaIC15',
                  '~/Library/Caches/IdeaIC15',
                  '~/Library/Logs/IdeaIC15',
                 ]
end
