cask 'thunderbird-ja' do
  version '38.5.1'
  sha256 'b6fb3d216f44503f086303076241ff78369d9faeef650c40d8ee88f92d155dbc'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ja-JP-mac"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.jp/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
