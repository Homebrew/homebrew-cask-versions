cask 'thunderbird-gl' do
  version '38.6.0'
  sha256 '430f1555b0ef650ecc61074586b2d9771ebb9412ddd3d832dade697b476dddff'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=gl"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/gl/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
