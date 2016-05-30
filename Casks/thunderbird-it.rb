cask 'thunderbird-it' do
  version '45.1.1'
  sha256 'c9547c71d3288bcf1d517db3f57360dc06b2d980993ee7a86155abbde32651aa'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=it"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/it/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
