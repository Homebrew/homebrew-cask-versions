cask :v1 => 'webstorm-eap' do
  version '140.2424'
  sha256 'd6d1f2d5efbc399f167e93d469149c4f35d8bc35eab77ab2a41aaa11a3b4213e'

  url "http://download-cf.jetbrains.com/webstorm/WebStorm-EAP-#{version}.dmg"
  homepage 'https://confluence.jetbrains.com/display/WI/WebStorm+EAP'
  license :commercial

  app 'WebStorm 10 EAP.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end

  zap :delete => [
                  '~/Library/Application Support/WebStorm10',
                  '~/Library/Preferences/WebStorm10',
                 ]
end
