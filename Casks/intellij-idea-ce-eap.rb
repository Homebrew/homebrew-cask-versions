cask :v1 => 'intellij-idea-ce-eap' do
  version '142.4859.6'
  sha256 'a8f9c2dcaa36aa0f0e01a252537e83d9d6f270bd2542612e0304e23bbcb5825c'

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
