cask 'thunderbird-fr' do
  version '38.6.0'
  sha256 '693298e738dd88c6b47615ef75385637e419f863cd811611d96a74f24fcfd57d'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=fr"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/fr/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
