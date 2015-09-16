cask :v1 => 'thunderbird-pt' do
  version '38.2.0'
  sha256 'f711ff603f3fe2f7f06beb63292ba8ab89408c1afccb8bce68b082d8303efe60'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=pt-BR"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/pt/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
