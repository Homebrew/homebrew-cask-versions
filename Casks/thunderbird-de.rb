cask 'thunderbird-de' do
  version '45.4.0'
  sha256 '31fea94bc6861dbb6e989fb1899d29d54b5a1ae6da50665ae0b922270b730291'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=de"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/de/thunderbird/'

  app 'Thunderbird.app'
end
