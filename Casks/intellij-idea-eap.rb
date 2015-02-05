cask :v1 => 'intellij-idea-eap' do
  version '140.2110.5'
  sha256 '971cea43259cf517c209dd646c6c48220c97f22e35c0773b644b8c7578aea1c3'

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
