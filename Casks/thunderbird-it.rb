cask :v1 => 'thunderbird-it' do
  version '38.2.0'
  sha256 '3d97ca2192bb94b325f6cfb0f06cb36f0e0efdcdce01413a26bc3bff48c7a8a6'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=it"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/it/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
