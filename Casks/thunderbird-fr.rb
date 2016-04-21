cask 'thunderbird-fr' do
  version '45.0'
  sha256 '51278d07fab68cadb9e1964c205c04981320252494497f41e64ad16f7cdb50bd'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=fr"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/fr/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
