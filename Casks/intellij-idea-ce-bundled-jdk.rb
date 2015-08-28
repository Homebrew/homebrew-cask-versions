cask :v1 => 'intellij-idea-ce-bundled-jdk' do
  version '14.1.4'
  sha256 '8718d1b553a373592dd885b9d4c63a7e152434fbb75d4c8f79dd3846db47d075'

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
