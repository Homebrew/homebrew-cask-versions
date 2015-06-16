cask :v1 => 'firefox-beta-ja' do
  version '39.0b5'
  sha256 'a57af5e2a3daf5d9fd51ff51378ac1731fa0e86ff9638a6c539aa7dfd3c16a1a'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ja-JP-mac"
  homepage 'https://www.mozilla.org/ja/firefox/channel/beta'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'
end
