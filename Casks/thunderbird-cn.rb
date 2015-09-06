cask :v1 => 'thunderbird-cn' do
  version '38.2.0'
  sha256 '84e1a6cbfc5a915b76ab2246953ce8a8723c406940daa929628e45970cadec3f'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=zh-CN"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/zh-CN/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end
