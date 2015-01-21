cask :v1 => 'intellij-idea-bundled-jdk' do
  version '14.0.2'
  sha256 'a53d9cf8e998e2a9e0f3ff023356971d3e56ea80cf4384fce3523c147771af1e'

  url "http://download.jetbrains.com/idea/ideaIU-#{version}-jdk-bundled.dmg"
  name 'IntelliJ IDEA'
  homepage 'https://www.jetbrains.com/idea/'
  license :commercial

  app 'IntelliJ IDEA 14.app'

  zap :delete => [
                  '~/Library/Application Support/IntelliJIdea14',
                  '~/Library/Preferences/IntelliJIdea14',
                 ]
end
