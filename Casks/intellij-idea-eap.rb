cask :v1 => 'intellij-idea-eap' do
  version '141.1531.2'
  sha256 '66fe6dcc84508cac655cac251975e69075ed1b0a80e9bf2baaa02b2a0b33c98d'

  url "http://download-cf.jetbrains.com/idea/ideaIU-#{version}.dmg"
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+14.1+EAP'
  license :commercial

  app 'IntelliJ IDEA 14 EAP.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end

  zap :delete => [
                  '~/Library/Application Support/IntelliJIdea14',
                  '~/Library/Preferences/IntelliJIdea14',
                 ]
end
