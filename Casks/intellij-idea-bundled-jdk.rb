cask :v1 => 'intellij-idea-bundled-jdk' do
  version '14.1'
  sha256 'd975cd7b648ccd433e8ee0d5fc616cdf1aa48e80b6ef821a299051ab6664ccce'

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
