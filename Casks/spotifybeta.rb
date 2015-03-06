cask :v1 => 'spotifybeta' do
  version '1.0.0.1093.g2eba9b4b-1679'
  sha256 'ac5e99bfb448d3f4ee46b1a95bd428c5d8f27e193b44895754ac4150a0f56a60'

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
