cask :v1 => 'clipmenu-dev' do
  version '0.4.4a12'
  sha256 '05232fc411db989702527f1939b619df2482ed09c2a59363cc5a750e0f544652'

  # dropbox.com is the official download host per the vendor homepage
  url "http://dl.dropbox.com/u/1140644/clipmenu/ClipMenu_#{version}.zip"
  name 'ClipMenu'
  homepage 'http://www.clipmenu.com/'
  license :gratis

  app 'ClipMenu.app'

  zap :delete => [
                  '~/Library/Application Support/ClipMenu',
                  '~/Library/Preferences/com.naotaka.ClipMenu.plist',
                 ]
end
