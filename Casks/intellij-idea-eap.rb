cask :v1 => 'intellij-idea-eap' do
  version '143.249.6'
  sha256 '5622e71170a5948d7a736a24d4195239155ec7170e8974d411913975ef525737'

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
