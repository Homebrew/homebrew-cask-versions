cask :v1 => 'spotify-beta' do
  version '1.0.1.811.g63b21681-72'
  sha256 'c3671db9876ce4497971cb2ec269edad7a8ab34f8af6e38f18328e2cee2c3c43'

  url "http://download.spotify.com/beta/spotify-app-#{version}.dmg"
  name 'Spotify'
  homepage 'https://www.spotify.com'
  license :gratis

  app 'Spotify.app'

  uninstall :launchctl => 'com.spotify.webhelper'

  zap :delete => [
                  '~/Library/Application Support/Spotify',
                  '~/Library/Preferences/com.spotify.client.plist',
                  '~/Library/Caches/com.spotify.client',
                  '~/Library/Logs/Spotify'
                 ]
end
