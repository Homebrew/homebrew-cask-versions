cask :v1 => 'thunderbird-it' do
  version '38.0.1'
  sha256 'a737aab1f62fad529698d58d7e8721e02306f9b141ae3207b428820a37528e47'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=it"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/it/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
