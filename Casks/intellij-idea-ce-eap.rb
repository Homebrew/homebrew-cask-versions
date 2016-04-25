cask 'intellij-idea-ce-eap' do
  version '145.970.4'
  sha256 'f19e88c1ada9c186f9ced31e59b908e14b7cf0f09fbc91098af8cab9841ef9f7'

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
