cask 'intellij-idea-eap' do
  version '144.3891.2'
  sha256 '4b5743f8eb333b108168076288c0a8e02a828ac6716d4650351ec699b50e5aad'

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
