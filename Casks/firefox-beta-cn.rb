cask :v1 => 'firefox-beta-cn' do
  version '36.0b7'
  sha256 '4815c12aeea3a73837b3f8d9e594ea31625e9835227697b95e98994bd1a8a919'

  url "https://download.mozilla.org/?product=firefox-#{version}&os=osx&lang=zh-CN"
  homepage 'https://www.mozilla.org/zh-CN/firefox/beta/'
  license :mpl

  app 'Firefox.app'
end
