cask 'intellij-idea-ce-eap' do
  version '145.596.7'
  sha256 '24dd5a9a8476770a83b166558553e5bb103131449e0447a8bba00fee630e77a4'

  url "https://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  name 'IntelliJ IDEA EAP :: CE'
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+2016.1+EAP'
  license :apache

  app 'IntelliJ IDEA 2016.1 CE EAP.app'

  zap delete: [
                '~/Library/Application Support/IdeaIC2016.1',
                '~/Library/Caches/IdeaIC2016.1',
                '~/Library/Logs/IdeaIC2016.1',
                '~/Library/Preferences/com.jetbrains.intellij.ce.plist',
                '~/Library/Preferences/IdeaIC2016.1',
                '~/Library/Saved Application State/com.jetbrains.intellij.ce.savedState',
              ]
end
