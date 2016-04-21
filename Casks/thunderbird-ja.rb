cask 'thunderbird-ja' do
  version '45.0'
  sha256 '82be7e177464ecb8e97fc492ef156fd9001be718d6ef9a153031b53b5c1a5172'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ja-JP-mac"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.jp/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
