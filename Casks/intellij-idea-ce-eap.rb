cask :v1 => 'intellij-idea-ce-eap' do
  version '142.4245.2'
  sha256 '0416b6abbb71ac62954f0104fbef52cef008891964c616e3890c8510cb27ec54'

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
