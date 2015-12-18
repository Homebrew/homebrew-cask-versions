cask 'thunderbird-cn' do
  version '38.4.0'
  sha256 'd9670ae5734c075efb884ff6933b8bf28b8ff06e55901e831e62c90b3d40fcd3'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=zh-CN"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/zh-CN/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
