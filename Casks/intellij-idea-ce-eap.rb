cask 'intellij-idea-ce-eap' do
  version '145.256.33'
  sha256 '447a5948b498097ffd4737a68d022962557ff607bfc37d990851360dd67344fc'

  url "https://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  name 'IntelliJ IDEA EAP :: CE'
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+16+EAP'
  license :apache

  app 'IntelliJ IDEA 2016 CE EAP.app'

  zap delete: [
                '~/Library/Application Support/IdeaIC2016.1',
                '~/Library/Caches/IdeaIC2016.1',
                '~/Library/Logs/IdeaIC2016.1',
                '~/Library/Preferences/com.jetbrains.intellij.ce.plist',
                '~/Library/Preferences/IdeaIC2016.1',
                '~/Library/Saved Application State/com.jetbrains.intellij.ce.savedState',
              ]
end
