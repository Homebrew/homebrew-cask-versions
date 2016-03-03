cask 'intellij-idea-eap' do
  version '145.184.1'
  sha256 '934a2eb8f649d9913afcb885ccf26f30d061983d5ac04a9ac6b1fb40f95f6579'

  url "https://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  name 'IntelliJ IDEA EAP'
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+16+EAP'
  license :commercial

  app 'IntelliJ IDEA 16 EAP.app'

  zap delete: [
                '~/Library/Preferences/com.jetbrains.intellij.plist',
                '~/Library/Application Support/IntelliJIdea16',
                '~/Library/Preferences/IntelliJIdea16',
                '~/Library/Caches/IntelliJIdea16',
                '~/Library/Logs/IntelliJIdea16',
              ]
end
