class ThunderbirdBeta < Cask
  version '33.0b1'
  sha256 '45549be5ddf4aaf7c50e08fa71dd8e5542cb36c8ca19498866cd0b8ebb3b6385'

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/en-US/Thunderbird%20#{version}.dmg"
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :oss

  app 'Thunderbird.app'
end
