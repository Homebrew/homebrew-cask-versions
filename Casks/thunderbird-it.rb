cask 'thunderbird-it' do
  version '38.5.1'
  sha256 'd164a6da1dfcbdb33930a40be733e74d739fb5c7561916f919ee05b1da84ec3d'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=it"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/it/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
