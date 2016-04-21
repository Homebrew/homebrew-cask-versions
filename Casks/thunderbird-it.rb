cask 'thunderbird-it' do
  version '45.0'
  sha256 '6f0e334231a6d16aff38b6e666b9b484217726fec1478fd3ffdfdece44fe7a6b'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=it"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/it/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
