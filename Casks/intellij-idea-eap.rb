cask 'intellij-idea-eap' do
  version '145.256.33'
  sha256 'fc023c598cc3cdf2f4a51ae53b9fda8a6a99f9f56d02b6bc6b57492b4e7816da'

  url "https://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  name 'IntelliJ IDEA EAP'
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+16+EAP'
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
