cask 'thunderbird-zh-cn' do
  version '38.7.2'
  sha256 'f6856f648afa3b2f867c050c7fd845833562747fb9dc079707866f8991a75313'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=zh-CN"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/zh-CN/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
