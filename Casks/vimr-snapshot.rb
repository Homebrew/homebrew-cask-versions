cask 'vimr-snapshot' do
  version 'SNAPSHOT-232'
  sha256 'de7fad10218b9da636aca705d1ccf284131a699ebbcf2fe6ef43b4bf73f444e7'

  # github.com/qvacua/vimr was verified as official when first introduced to the cask
  url "https://github.com/qvacua/vimr/releases/download/#{version.split('-').first.downcase}/#{version.split('-').last}/VimR-#{version}.tar.bz2"
  appcast 'https://github.com/qvacua/vimr/releases.atom',
          checkpoint: '8e750ed2e2b859f319e2a93923ce5f4cc807ee2b25f72b09e009eeb18c7291e4'
  name 'VimR'
  homepage 'http://vimr.org/'

  app 'VimR.app'
  binary "#{appdir}/VimR.app/Contents/Resources/vimr"

  zap delete: [
                '~/Library/Caches/com.qvacua.VimR',
                '~/Library/Saved Application State/com.qvacua.VimR.savedState',
                '~/Library/WebKit/com.qvacua.VimR',
              ],
      trash:  '~/Library/Preferences/com.qvacua.VimR.plist'
end
