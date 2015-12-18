cask 'utorrent-beta' do
  version :latest
  sha256 :no_check

  url 'http://download-new.utorrent.com/endpoint/utmac/os/osx/track/beta/'
  name 'µTorrent'
  homepage 'http://www.utorrent.com/'
  license :freemium

  zap :delete => [
                  '~/Library/Application Support/uTorrent',
                  '~/Library/Preferences/com.bittorrent.uTorrent.plist',
                  '~/Library/Preferences/com.bittorrent.uTorrent-Installer.plist',
                  '~/Library/Saved Application State/com.bittorrent.uTorrent.savedState',
                  '~/Library/Saved Application State/com.bittorrent.uTorrent-Installer.savedState',
                  '~/Library/Caches/com.bittorrent.uTorrent',
                  '~/Library/Caches/com.bittorrent.uTorrent-Installer'
                 ]

  app 'uTorrent.app'
end
