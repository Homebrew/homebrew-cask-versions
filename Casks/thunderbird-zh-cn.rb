cask 'thunderbird-zh-cn' do
  version '45.0'
  sha256 '1a8bd2457d9590b877c8636c48b1dd6308def068e786765e9601a8e97bb357b4'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=zh-CN"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/zh-CN/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
