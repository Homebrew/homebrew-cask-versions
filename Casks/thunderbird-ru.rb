cask 'thunderbird-ru' do
  version '38.5.0'
  sha256 'f2ec8fc356e01b31d6930f27c662c80b4c3533d037c69b1a1708fc3923e4fa28'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ru"
  name 'Mozilla Thunderbird'
  homepage 'http://www.mozilla.org/ru/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
