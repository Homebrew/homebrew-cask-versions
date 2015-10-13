cask :v1 => 'thunderbird-cn' do
  version '38.3.0'
  sha256 '1fb747687a9d4b865b9ec9c07eaef0bbd93cccfe85751ec9725e7ab641f8d323'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=zh-CN"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/zh-CN/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
