cask :v1 => 'phpstorm-eap' do
  version '141.176'
  sha256 'a5c70789db4aa13c938de761029b15b2348b0a39f7ac549eaa7c82434373caed'

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
