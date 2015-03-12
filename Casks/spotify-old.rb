cask :v1 => 'spotify-old' do
  version '0.9.15.27'
  sha256 '83a569463c7bafd2947471e0657f20f30f29eed2e7c69b31545c09999e8c1417'

  url 'http://dl.filehorse.com/mac/mp3-and-audio/spotify/Spotify-0.9.15.27.dmg?st=chZgCLlSY_qP3kGNqQ6hEQ&e=1426196090&fn=Spotify.dmg'
  name 'Spotify before they removed Applescript support'
  homepage 'http://spotify.com/'
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
