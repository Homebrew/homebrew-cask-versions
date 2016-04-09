cask 'thunderbird-ja' do
  version '38.7.2'
  sha256 'f31e9ca02b1f40921ca05c9b096196395b5133b7020e9a62b853d4beb0e9d584'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ja-JP-mac"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.jp/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
