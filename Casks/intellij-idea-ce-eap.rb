cask :v1 => 'intellij-idea-ce-eap' do
  version '142.5047.6'
  sha256 '4b5085d2ecab25c3f688b10b3b4a1034426ed8567f1f396d86ee1ad1cf922714'

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
