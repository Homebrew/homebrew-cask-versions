cask :v1 => 'thunderbird-fr' do
  version '38.0.1'
  sha256 '0cb2ee1c8b45cb84e0424e6351fad95a46e19073bba483e4487c9050b7ca302d'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=fr"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/fr/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
