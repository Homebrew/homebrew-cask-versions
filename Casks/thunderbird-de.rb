cask 'thunderbird-de' do
  version '45.0'
  sha256 '75055d9b25b9e52a20d5290f2c31537cc949a76992279149f752100cc711e0ba'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=de"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/de/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
