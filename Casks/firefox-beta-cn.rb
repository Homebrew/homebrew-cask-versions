cask :v1 => 'firefox-beta-cn' do
  version '39.0b5'
  sha256 '95c8beb8007f89ebaabacdab4c1e3a494e50e05c3c6e7d96a52c68c57b5ae58f'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-CN"
  homepage 'https://www.mozilla.org/zh-CN/firefox/beta/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'
end
