cask :v1 => 'intellij-idea-bundled-jdk' do
  version '14.1.1'
  sha256 'fef01bad9a244a92c78a21969980829b101236ec11a9fd5c779dd344a4c9f7e3'

  url "https://download.jetbrains.com/idea/ideaIU-#{version}-custom-jdk-bundled.dmg"
  name 'IntelliJ IDEA'
  homepage 'https://www.jetbrains.com/idea/'
  license :commercial

  app 'IntelliJ IDEA 14.app'

  zap :delete => [
                  '~/Library/Preferences/com.jetbrains.intellij.plist',
                  '~/Library/Preferences/IntelliJIdea14',
                  '~/Library/Application Support/IntelliJIdea14',
                  '~/Library/Caches/IntelliJIdea14',
                  '~/Library/Logs/IntelliJIdea14',
                 ]
end
