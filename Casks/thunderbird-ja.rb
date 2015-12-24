cask 'thunderbird-ja' do
  version '38.4.0'
  sha256 'db4b4ce17362aeeff691956ae9859e2c0096ae6addd089801e878290d77fe489'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ja-JP-mac"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.jp/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
