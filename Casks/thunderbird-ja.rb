cask :v1 => 'thunderbird-ja' do
  version '38.0.1'
  sha256 'b93ebff39a0a846c15bff5e7975ced5d2b0f43ce98f5469cc342e1a5db7ccab8'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ja-JP-mac"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.jp/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
