cask :v1 => 'thunderbird-ja' do
  version '38.2.0'
  sha256 '2014b6fac54d398f63c442cc531ddfa77b604ecd616a98e67b2197225135398b'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ja-JP-mac"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.jp/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
