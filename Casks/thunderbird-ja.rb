cask 'thunderbird-ja' do
  version '38.7.0'
  sha256 '822104669c59ab2aff0b2b6b4eda64c2be0a2eb9151a68af007c612ddfee82fe'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ja-JP-mac"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.jp/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
