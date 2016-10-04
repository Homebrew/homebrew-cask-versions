cask 'thunderbird-it' do
  version '45.4.0'
  sha256 '56168ea04a98e309e40fa98d72dce19a2f96898c21452fe904f893d22c6c56fc'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=it"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/it/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
