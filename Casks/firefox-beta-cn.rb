cask :v1 => 'firefox-beta-cn' do
  version '36.0b1'
  sha256 '26fc7da08b829a62c00d15110d1e5478527facab7cf88f0b140eea3cdc828404'

  url "https://download.mozilla.org/?product=firefox-#{version}&os=osx&lang=zh-CN"
  homepage 'https://www.mozilla.org/zh-CN/firefox/beta/'
  license :mpl

  app 'Firefox.app'
end
