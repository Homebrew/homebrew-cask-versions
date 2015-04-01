cask :v1 => 'spotifybeta' do
  version '1.0.0.1212.gc1771003-2016'
  sha256 '7e702d08520e4ff8569afb12504788321f3e81b436685a72e0336f10f05720b8'

  url "http://download.spotify.com/beta/spotify-app-#{version}.dmg"
  name 'Spotify Beta'
  name 'Spotify'
  homepage 'https://www.spotify.com'
  license :gratis

  app 'SpotifyBeta.app'

  uninstall :launchctl => 'com.spotify.webhelper'

  zap :delete => [
                  '~/Library/Application Support/Spotify',
                  '~/Library/Preferences/com.spotify.client.plist',
                  '~/Library/Caches/com.spotify.client',
                  '~/Library/Logs/Spotify'
                 ]
end
