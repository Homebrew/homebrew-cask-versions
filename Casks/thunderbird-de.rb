cask :v1 => 'thunderbird-de' do
  version '38.0.1'
  sha256 'a40e1381362591307047a906196861e1227f0f031e8bbd481da81f870e51e67f'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=de"
  name 'Mozilla Thunderbird'
  homepage 'http://www.mozilla.org/de/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
