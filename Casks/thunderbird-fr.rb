class ThunderbirdFr < Cask
  version '24.6.0'
  sha256 'cf53ff2727d6699ed3b866794285bfd955af4fe177646455327eca78094a2d38'

  url "http://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/fr/Thunderbird%20#{version}.dmg"
  homepage 'https://www.mozilla.org/fr/thunderbird/'

  app 'Thunderbird.app'
end
