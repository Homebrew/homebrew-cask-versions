cask 'intellij-idea-eap' do
  version '145.844.1'
  sha256 'e9c2e727689fccd3feb3355f440fbbcf84dbb5c4b9cfd67b4022f2b1de74a906'

  url "https://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  name 'IntelliJ IDEA EAP'
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+2016.1+EAP'
  license :commercial

  app 'IntelliJ IDEA 2016 EAP.app'

  zap delete: [
                '~/Library/Preferences/com.jetbrains.intellij.plist',
                '~/Library/Application Support/IntelliJIdea2016.1',
                '~/Library/Preferences/IntelliJIdea2016.1',
                '~/Library/Caches/IntelliJIdea2016.1',
                '~/Library/Logs/IntelliJIdea2016.1',
              ]
end
