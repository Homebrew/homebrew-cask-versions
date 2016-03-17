cask 'thunderbird-zh-cn' do
  version '38.7.0'
  sha256 '75cdc45ab76b37436303629f55c39621907258f0e9cca436ea6147d7ff497e3b'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=zh-CN"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/zh-CN/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
