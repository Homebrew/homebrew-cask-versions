cask 'thunderbird-gl' do
  version '38.7.2'
  sha256 '1b6a262e619a0ca69345b1e32d25ff6fb0b5bd64cfda48de513867fbf3de0d43'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=gl"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/gl/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
