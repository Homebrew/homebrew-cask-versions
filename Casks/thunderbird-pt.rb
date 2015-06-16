cask :v1 => 'thunderbird-pt' do
  version '38.0.1'
  sha256 'd614e061cf6fb70ca74d3ee3997351606faf06741a847f3d07f505ba15de18d1'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=pt-BR"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/pt/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
