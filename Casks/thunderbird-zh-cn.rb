cask 'thunderbird-zh-cn' do
  version '38.5.0'
  sha256 '99b738399d8e82a808258b6397cbaa7a2a1a25e1d417cadb4fd95ba3f4cc26b1'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=zh-CN"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/zh-CN/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
