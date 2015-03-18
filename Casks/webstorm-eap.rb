cask :v1 => 'webstorm-eap' do
  version '140.2753'
  sha256 '1b145e7014cc607babdfa7b6537fe0b431c3938c3c514d8fad873edeeb263883'

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
