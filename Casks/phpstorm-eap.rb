cask :v1 => 'phpstorm-eap' do
  version '141.2017'
  sha256 'f0ec9828aab591159531cdeb815dcf976d9707bb126a84daa4554809c9fc34b2'

  url "http://download.jetbrains.com/webide/PhpStorm-EAP-#{version}.dmg"
  homepage 'http://confluence.jetbrains.com/display/PhpStorm/PhpStorm+Early+Access+Program'
  license :commercial

  app 'PhpStorm EAP.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end

  zap :delete => [
                  '~/Library/Application Support/WebIde90',
                  '~/Library/Caches/WebIde90',
                  '~/Library/Preferences/WebIde90',
                  '~/Library/Preferences/com.jetbrains.PhpStorm-EAP.plist',
                 ]
end
