cask :v1 => 'intellij-idea-ce-bundled-jdk' do
  version '14.1.5'
  sha256 '3b658769090a7bb91e4ad7a1ca4a55d94f41be52ef7de2c11f0c4144dd894e84'

  url "https://download.jetbrains.com/idea/ideaIC-#{version}-custom-jdk-bundled.dmg"
  name 'IntelliJ IDEA'
  homepage 'https://www.jetbrains.com/idea/'
  license :apache

  app 'IntelliJ IDEA 14 CE.app'

  zap :delete => [
                  '~/Library/Preferences/com.jetbrains.intellij.ce.plist',
                  '~/Library/Preferences/IdeaIC14',
                  '~/Library/Application Support/IdeaIC14',
                  '~/Library/Caches/IdeaIC14',
                  '~/Library/Logs/IdeaIC14',
                 ]
end
