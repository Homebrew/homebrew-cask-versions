cask :v1 => 'thunderbird-pt' do
  version '38.3.0'
  sha256 '4d804e8acf980dfcd69c403097c58d2648555f041d4689aeaccfee8222de8bf1'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=pt-BR"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/pt/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
