cask :v1 => 'firefox-beta-cn' do
  version '36.0b3'
  sha256 'a188706dd04965cf1e03cf41fb3f0b85ecd89ee1df0ba353edb8a5bac1aac148'

  url "https://download.mozilla.org/?product=firefox-#{version}&os=osx&lang=zh-CN"
  homepage 'https://www.mozilla.org/zh-CN/firefox/beta/'
  license :mpl

  app 'Firefox.app'
end
