cask 'thunderbird-de' do
  version '38.5.1'
  sha256 '2d9bea4897507d1d7c2a7dd1b4d3921e540abfaf62bbbe0e75545ecb28aec653'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=de"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/de/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
