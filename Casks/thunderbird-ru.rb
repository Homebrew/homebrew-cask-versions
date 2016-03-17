cask 'thunderbird-ru' do
  version '38.7.0'
  sha256 'fbfb2e4f3da66d3bff3c16d6bf4def8d437496bb047f6903ca0fe15a6e666f4a'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ru"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/ru/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
