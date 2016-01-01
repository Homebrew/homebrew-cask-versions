cask 'intellij-idea-eap' do
  version '144.2608.2'
  sha256 '1df17eca5a1aaa27607802d983658c8b1f594d62da920d2992fb7dddcf2711d2'

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
