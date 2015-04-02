cask :v1 => 'intellij-idea-ce-bundled-jdk' do
  version '14.1.1'
  sha256 'eeffcd4515c72998bba31bd763d93721b371177383bfa37a05a88346eee7c4a5'

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
