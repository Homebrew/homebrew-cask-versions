cask :v1 => 'spotifybeta' do
  version '1.0.0.797.gd2cd6291-1'
  sha256 'eb3bbf459112f17d80b7f31ad567c5db08a5f400231fdbdf7c45c35ec5e35b70'

  url "http://download.spotify.com/beta/spotify-app-#{version}.dmg"
  name 'Spotify Beta'
  name 'Spotify'
  homepage 'https://www.spotify.com/'
  license :unknown

  app 'SpotifyBeta.app'
end
