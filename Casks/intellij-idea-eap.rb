cask :v1 => 'intellij-idea-eap' do
  version '141.104.1'
  sha256 '0246a773b9879bf8076e541d716d1a874b3a42410ddae53342fea21b8b685522'

  url "http://download.jetbrains.com/idea/ideaIU-#{version}-custom-jdk-bundled.dmg"
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+14.1+EAP'
  license :commercial

  app 'IntelliJ IDEA 14 EAP.app'

  zap :delete => [
                  '~/Library/Application Support/IntelliJIdea14',
                  '~/Library/Preferences/IntelliJIdea14',
                 ]
end
