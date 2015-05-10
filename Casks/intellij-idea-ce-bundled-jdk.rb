cask :v1 => 'intellij-idea-ce-bundled-jdk' do
  version '14.1.2'
  sha256 '5e2f180bdc1c53c096d69571529105754ab08b696f54ca324571518eafbd7ac5'

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
