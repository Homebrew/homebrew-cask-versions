cask 'thunderbird-zh-cn' do
  version '45.1.1'
  sha256 '27b3a519c08847187b1a4f7b02ae2316cf72a5cb6598ec01bb53b527ee17edef'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=zh-CN"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/zh-CN/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
