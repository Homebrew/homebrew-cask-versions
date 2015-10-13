cask :v1 => 'thunderbird-fr' do
  version '38.3.0'
  sha256 '5c56a0e846317cde30121730352b287632dfbe84d56c4abc2700e81e99eee772'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=fr"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/fr/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
