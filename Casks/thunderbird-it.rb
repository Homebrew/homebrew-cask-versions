cask 'thunderbird-it' do
  version '38.7.2'
  sha256 'd693220c58d1bc0b87e41a9cad3de8bbcfcbaa725f609162cc83be9712e2505d'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=it"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/it/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
