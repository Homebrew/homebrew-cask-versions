cask :v1 => 'thunderbird-cn' do
  version '38.0.1'
  sha256 'bece5e8fa9ba80bb34f95b31727be2b5d1ce3c35b42220e774b4e35fe984b8f5'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=zh-CN"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/zh-CN/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
