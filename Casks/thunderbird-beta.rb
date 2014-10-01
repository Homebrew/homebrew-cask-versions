class ThunderbirdBeta < Cask
  version '33.0b1'
  sha256 '96db91d29cf5ec4e01e1c877eb804c9894e699e57c0d6d55219b1f53cbdb0dab'

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/en-US/Thunderbird%20#{version}.dmg"
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :oss

  app 'Thunderbird.app'
end
