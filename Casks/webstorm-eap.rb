cask :v1 => 'webstorm-eap' do
  version '141.1108'
  sha256 'ba572e9784a50c01bc750206781927812fc32c380a4fc697175325477228e971'

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
