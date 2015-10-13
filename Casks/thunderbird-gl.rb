cask :v1 => 'thunderbird-gl' do
  version '38.3.0'
  sha256 'c87500764b61741a7b26ebf6d54b641891f80003c5794a2657c14c8bf56c29f1'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=gl"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/gl/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
