cask :v1 => 'phpstorm-eap' do
  version '141.332'
  sha256 'bddb92b2397798ec634de89e64d3ca797cd47c8efbec8c4fec29d878cbc4b0e8'

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
