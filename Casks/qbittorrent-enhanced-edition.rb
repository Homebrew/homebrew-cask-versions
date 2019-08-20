cask 'qbittorrent-enhanced-edition' do
  version '4.1.7.1'
  sha256 '487310954af206550cd0eafff1b56d84aaf968e64086e66819aad9b2b0fa0bf3'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases/download/release-#{version}/qBittorrent-#{version}.dmg"
  appcast 'https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases.atom'
  name 'qBittorrent Enhanced Edition'
  name 'qBittorrent'
  homepage 'https://github.com/c0re100/qBittorrent-Enhanced-Edition'

  conflicts_with cask: 'qbittorrent'

  depends_on macos: '>= :sierra'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'qbittorrent.app', target: 'qBittorrent.app'

  zap trash: [
               '~/.config/qBittorrent',
               '~/Library/Application Support/qBittorrent',
               '~/Library/Caches/qBittorrent',
               '~/Library/Preferences/org.qbittorrent.qBittorrent.plist',
               '~/Library/Preferences/qBittorrent',
               '~/Library/Saved Application State/org.qbittorrent.qBittorrent.savedState',
             ]
end
