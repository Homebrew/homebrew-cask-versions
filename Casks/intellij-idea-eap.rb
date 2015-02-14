cask :v1 => 'intellij-idea-eap' do
  version '140.2285.5'
  sha256 'f6ac5ba4ad73eaa7c072c4c4c52b26f7c65f3fbc4f520c2cf9fbe902aedd1751'

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
