cask :v1 => 'thunderbird-gl' do
  version '38.0.1'
  sha256 'ba48ea6bc6eee667059302e887e6f1cce9d1fc8325226ae3cedeebe6bb5c4da0'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=gl"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/gl/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
