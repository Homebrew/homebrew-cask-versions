cask :v1 => 'phpstorm-eap' do
  version '141.891'
  sha256 '5fca9d16de932905109decc442889f1534b5e77b5226ff15c77bd8259aa88ec0'

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
