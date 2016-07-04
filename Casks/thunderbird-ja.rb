cask 'thunderbird-ja' do
  version '45.2.0'
  sha256 '9d93b199bc4da73b651975d880492cc1b77289017f3968e070dcb57ca0366837'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ja-JP-mac"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.jp/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
