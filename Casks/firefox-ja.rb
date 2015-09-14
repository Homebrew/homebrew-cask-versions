cask :v1 => 'firefox-ja' do
  version '40.0.3'
  sha256 'dcf692ffc6cdc15755db3a7ef0a5c64bc2c750e951d17cd649face1c82f410a3'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ja-JP-mac"
  name 'Firefox'
  homepage 'http://www.mozilla.jp/firefox/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
