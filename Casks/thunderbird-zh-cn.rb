cask 'thunderbird-zh-cn' do
  version '38.6.0'
  sha256 '2cba8e176f32e9474e66981e7021dcfda6b26383db9b044f944eadf9b72afca8'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=zh-CN"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/zh-CN/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
