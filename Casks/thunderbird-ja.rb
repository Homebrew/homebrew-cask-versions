cask 'thunderbird-ja' do
  version '38.5.0'
  sha256 '49b7fb8b3342124bc2bc4c8b4ca5d2467b23c8d5157b08e06e044362de7f701a'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ja-JP-mac"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.jp/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
