cask 'thunderbird-zh-cn' do
  version '45.4.0'
  sha256 '2114bc9098a054e0d6ac70173e711eb66e755a37c1f55bc9769efe1800791b3b'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=zh-CN"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/zh-CN/thunderbird/'

  app 'Thunderbird.app'
end
