cask :v1 => 'phpstorm-eap' do
  version '141.1534'
  sha256 'e2ac28bb33b68976a6b76407422604437d1a8fde55071373f427d1975466db7c'

  url "http://download.jetbrains.com/webide/PhpStorm-EAP-#{version}.dmg"
  homepage 'http://confluence.jetbrains.com/display/PhpStorm/PhpStorm+Early+Access+Program'
  license :commercial

  app 'PhpStorm EAP.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end

  zap :delete => [
                  '~/Library/Application Support/WebIde80',
                  '~/Library/Preferences/WebIde80',
                  '~/Library/Preferences/com.jetbrains.PhpStorm-EAP.plist',
                 ]
end
