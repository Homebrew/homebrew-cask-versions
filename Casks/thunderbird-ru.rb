cask 'thunderbird-ru' do
  version '45.2.0'
  sha256 '914ecf32651a1d04aa67f8218d4c98383ad7d198eb35d78984966c7ef814dee0'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ru"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/ru/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
