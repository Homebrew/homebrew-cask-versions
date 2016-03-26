cask 'thunderbird-ja' do
  version '38.7.1'
  sha256 'c305b2dc57c17aafb66c5956270f41fb6a21c5a0fc8c4fa906fc2667f95ae290'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ja-JP-mac"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.jp/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
