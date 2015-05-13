cask :v1 => 'thunderbird-ja' do
  version '31.6.0'
  sha256 '6b6210481826e5365da88f1460cd0b5a2936aa9b601b5482faecbde34b1fd5c0'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ja-JP-mac"
  homepage 'https://www.mozilla.jp/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
