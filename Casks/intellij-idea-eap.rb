cask :v1 => 'intellij-idea-eap' do
  version '143.1183.10'
  sha256 'b9e69055b540fb69627cee8f9275966c83ed9c1c285bb106490b6653b95141fe'

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
