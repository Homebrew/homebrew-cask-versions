cask 'thunderbird-zh-cn' do
  version '38.5.1'
  sha256 '8e1869ce36f541c3f17bd66bdc64bb6f0302961702091d70c147d0450fc371a1'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=zh-CN"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/zh-CN/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
