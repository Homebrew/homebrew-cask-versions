cask 'thunderbird-ja' do
  version '45.1.1'
  sha256 '34fabe2e171d3a5df7807d7525838585940e5b271da9dd8ef48963f214ff3723'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ja-JP-mac"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.jp/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
