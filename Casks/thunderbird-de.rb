cask 'thunderbird-de' do
  version '38.7.1'
  sha256 '0b6e820c523ce2c7064ae9115ae02a6732e3797f3750b518e3c8947466be603d'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=de"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/de/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
