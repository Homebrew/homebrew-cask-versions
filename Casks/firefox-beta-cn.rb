cask :v1 => 'firefox-beta-cn' do
  version '40.0b2'
  sha256 'f23bd254febb023fb59d2b3facb6172f2557705a9096d9ebf01a9e11307e9df6'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-CN"
  homepage 'https://www.mozilla.org/zh-CN/firefox/beta/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'
end
