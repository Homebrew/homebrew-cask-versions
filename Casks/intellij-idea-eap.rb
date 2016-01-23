cask 'intellij-idea-eap' do
  version '144.3143.6'
  sha256 'ac2bdc46f840c791aa73bfe514c8e0c419454acaa77bb4b6e65c5568b2610e0b'

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
