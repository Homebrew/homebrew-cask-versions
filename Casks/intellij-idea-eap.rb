cask :v1 => 'intellij-idea-eap' do
  version '143.1015.7'
  sha256 'c9325765cde4123ee24346f7743eea71dccb83e4bc0321087e261627d5e0e502'

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
