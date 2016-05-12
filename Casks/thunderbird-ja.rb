cask 'thunderbird-ja' do
  version '45.1.0'
  sha256 'c8ce6165c80573214ef8b3b4c857c57ed06b7efe348a4c73e4d59cf9f4edb69d'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ja-JP-mac"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.jp/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
