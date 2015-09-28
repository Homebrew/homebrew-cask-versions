cask :v1 => 'intellij-idea-bundled-jdk' do
  version '14.1.5'
  sha256 'b50019cee4b64d238ae810c0a45a2df3c932d2ef4dc4f393dd5b4d8787527455'

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
