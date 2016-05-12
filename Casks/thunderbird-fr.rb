cask 'thunderbird-fr' do
  version '45.1.0'
  sha256 'e80283671bf74eeea9e6959cf653158163e9e2f3cfa312a3e0652ad0f79d11ab'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=fr"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/fr/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
