cask :v1 => 'spotifybeta' do
  version '1.0.0.909.ge4845795-1223'
  sha256 '9279b76b13185d2cba4afcbf19464a97229b3a50620fbfff4311fef8cf9b8c50'

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
