cask 'thunderbird-zh-cn' do
  version '45.2.0'
  sha256 'd6d5b0a2856b4d2328af7d7ed93388cbb363e91e53be7879ab7d2965811ef41b'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=zh-CN"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/zh-CN/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
