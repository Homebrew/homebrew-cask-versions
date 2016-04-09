cask 'thunderbird-fr' do
  version '38.7.2'
  sha256 '4cf9c47d06c343cd9f6b8b464912003caeea5e3fd258d44aba2c5b1478533e34'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=fr"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/fr/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
