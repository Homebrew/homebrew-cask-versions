cask 'intellij-idea-eap' do
  version '145.970.4'
  sha256 '663b9ed3d867ccecfcc40d559a56e8f4486ce95691106d690bf271d3f04f82dc'

  url "https://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  name 'IntelliJ IDEA EAP'
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+2016.1+EAP'
  license :commercial

  app 'IntelliJ IDEA 2016.1 EAP.app'

  zap delete: [
                '~/Library/Preferences/com.jetbrains.intellij.plist',
                '~/Library/Application Support/IntelliJIdea2016.1',
                '~/Library/Preferences/IntelliJIdea2016.1',
                '~/Library/Caches/IntelliJIdea2016.1',
                '~/Library/Logs/IntelliJIdea2016.1',
              ]
end
