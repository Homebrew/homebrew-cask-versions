cask 'thunderbird-zh-cn' do
  version '45.1.0'
  sha256 'baec64fbc422e761b01487a981c00dd1c4743af64c59bff3c031eadf23687618'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=zh-CN"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/zh-CN/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
