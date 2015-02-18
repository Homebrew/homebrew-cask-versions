cask :v1 => 'spotifybeta' do
  version '1.0.0.995.gcdfee982-1486'
  sha256 '1de2c2a4f33ef8fbee384b0d5b04e9dde7a30540f1a627dd1dba378096a1c9ff'

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
