cask :v1 => 'intellij-idea-ce-bundled-jdk' do
  version '14.1'
  sha256 '62c8b150ff82c31f2b6355a6f43b8ef69913b8f387cef6ddb4659622abb59a52'

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
