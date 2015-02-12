cask :v1 => 'spotifybeta' do
  version '1.0.0.974.ga39487e3-1439'
  sha256 '55ab8ed9446654f007a8dc1782f26d836b3ddd585a6dbc36b19148f7d624c18b'

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
