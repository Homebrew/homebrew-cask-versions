cask :v1 => 'webstorm-eap' do
  version '141.224'
  sha256 '262841715a4db53a4c2f1db268c16905875e933ab8d45e730894f2a888b80a88'

  url "http://download.jetbrains.com/webstorm/WebStorm-EAP-#{version}.dmg"
  homepage 'https://confluence.jetbrains.com/display/WI/WebStorm+10+EAP'
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
