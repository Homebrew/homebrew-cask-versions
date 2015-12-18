cask 'bittorrent-sync1' do
  version '1.4.111'
  sha256 '1c7df900e4a64d7f349605b3406c183399fb09a6b96278ae04817e2fcce0acf4'

  url "http://syncapp.bittorrent.com/#{version}/BTSync-#{version}.dmg"
  name 'BitTorrent Sync'
  homepage 'https://www.getsync.com/'
  license :gratis

  app 'BitTorrent Sync.app'
end
