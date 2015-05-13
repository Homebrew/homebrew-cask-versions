cask :v1 => 'firefox-esr-cn' do
  version '38.0'
  sha256 '3ab26baccdd923ad1c3dbbf418045321f3a9db10022f407c61a45dffcaf1c9d7'

  url "https://download.mozilla.org/?product=firefox-#{version}esr-SSL&os=osx&lang=zh-CN"
  homepage 'https://www.mozilla.org/zh-CN/firefox/organizations/'
  license :mpl

  app 'Firefox.app'
end
