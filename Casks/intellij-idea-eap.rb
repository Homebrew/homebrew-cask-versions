cask :v1 => 'intellij-idea-eap' do
  version '143.380.20'
  sha256 '4fbb3c05ada2605d0f1bc5d1f530b6e5952961d09efd58add09dc71c66767c4d'

  url "https://download.jetbrains.com/idea/ideaIU-#{version}-custom-jdk-bundled.dmg"
  name 'IntelliJ IDEA EAP'
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+15+EAP'
  license :commercial

  app 'IntelliJ IDEA 15 EAP.app'

  zap :delete => [
		  '~/Library/Preferences/com.jetbrains.intellij.plist',
                  '~/Library/Application Support/IntelliJIdea15',
                  '~/Library/Preferences/IntelliJIdea15',
                  '~/Library/Caches/IntelliJIdea15',
                  '~/Library/Logs/IntelliJIdea15',
                 ]
end
