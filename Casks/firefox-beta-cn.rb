cask :v1 => 'firefox-beta-cn' do
  version '36.0b5'
  sha256 '407b4a280507d30221d478fbece00319490a5c39ad611d1e0c5956dc7deb4b2a'

  url "https://download.mozilla.org/?product=firefox-#{version}&os=osx&lang=zh-CN"
  homepage 'https://www.mozilla.org/zh-CN/firefox/beta/'
  license :mpl

  app 'Firefox.app'
end
