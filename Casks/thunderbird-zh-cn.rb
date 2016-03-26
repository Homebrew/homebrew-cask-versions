cask 'thunderbird-zh-cn' do
  version '38.7.1'
  sha256 '29d4f1bd6b728fc11ac7270338ea294f0fa21ef2b3327d1dc79e42a5a7b93d73'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=zh-CN"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/zh-CN/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end
