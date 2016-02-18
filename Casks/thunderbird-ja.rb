cask 'thunderbird-ja' do
  version '38.6.0'
  sha256 '77ab1099aeb9eaec6a237f95a37cc37470db25613a0b3ae0e84af957ce96725e'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ja-JP-mac"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.jp/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
