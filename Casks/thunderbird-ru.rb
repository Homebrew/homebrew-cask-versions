cask 'thunderbird-ru' do
  version '45.1.1'
  sha256 'f3751981f09e367c1c4a9d2451254ba0f067e9876e9637cacd558f3296f593a4'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ru"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/ru/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
