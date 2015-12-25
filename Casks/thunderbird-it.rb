cask 'thunderbird-it' do
  version '38.5.0'
  sha256 'b78508f3a892b6a9c24cf819ae05fa981e23d8887e7bcf1ea57cda1a8ddcd62d'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=it"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/it/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
