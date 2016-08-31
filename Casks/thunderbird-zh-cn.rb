cask 'thunderbird-zh-cn' do
  version '45.3.0'
  sha256 '1e426a8df0ff6ef185eea63814517f81c24be717357b4e2b648fd50000755ee2'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=zh-CN"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/zh-CN/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
