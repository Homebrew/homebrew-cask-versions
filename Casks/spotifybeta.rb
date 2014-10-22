class Spotifybeta < Cask
  version '1.0.0.588.g5dffdc66-3237'
  sha256 '918101254dd8177dc66e2642edf65500ce3f13ef4ce089925fef5f77529979ab'

  url "http://download.spotify.com/beta/spotify-app-#{version}.dmg"
  homepage 'https://www.spotify.com/'
  license :unknown

  app 'SpotifyBeta.app'
end
