cask :v1 => 'firefox-beta-cn' do
  version '38.0.5b1'
  sha256 '62438a8eff9b2c31ecd45e2a0f5a7e916473d2ee158ee56e89925b691e43e986'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-CN"
  homepage 'https://www.mozilla.org/zh-CN/firefox/beta/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'
end
