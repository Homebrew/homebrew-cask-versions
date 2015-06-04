cask :v1 => 'intellij-idea-eap' do
  version '141.1383.1'
  sha256 '3d0eed3d919cc15568e6b2a9ec36626c407565722882b5acd14e886ceb5337d9'

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
