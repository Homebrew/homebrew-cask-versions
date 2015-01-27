cask :v1 => 'intellij-idea-eap' do
  version '14.0.3'
  sha256 '0a716c9b375a31574449bbc3961314caf7c113ae415ef0e8652e7ce60b384b23'

  url "http://download-cf.jetbrains.com/idea/ideaIU-#{version}.dmg"
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+14+EAP'
  license :commercial

  app 'IntelliJ IDEA 14.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end

  zap :delete => [
                  '~/Library/Application Support/IntelliJIdea14',
                  '~/Library/Preferences/IntelliJIdea14',
                 ]
end
