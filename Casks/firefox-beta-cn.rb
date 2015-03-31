cask :v1 => 'firefox-beta-cn' do
  version '37.0b7'
  sha256 '4578f6b468e8bef7d8e428a82954636e7c7242c1733897cf25ef235e0895b35b'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-CN"
  homepage 'https://www.mozilla.org/zh-CN/firefox/beta/'
  license :mpl

  app 'Firefox.app'
end
