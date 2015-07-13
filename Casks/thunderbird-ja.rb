cask :v1 => 'thunderbird-ja' do
  version '38.1.0'
  sha256 '471cf51893bdfd22fd6af37b3d3a72a6cc805cd4079f01737a32519f4e195f19'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ja-JP-mac"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.jp/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
