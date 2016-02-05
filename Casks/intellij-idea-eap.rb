cask 'intellij-idea-eap' do
  version '144.3600.7'
  sha256 '9d18df881fa02f1667b734d10480595c6f577ae90b5292594fac4732a93b3eb5'

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
