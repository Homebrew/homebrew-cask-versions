cask :v1 => 'firefox-beta-ja' do
  version '36.0b1'
  sha256 '8e818c1e34274fbaf3f8747bb1ba09aa5bd7d8783a609defad386b13f68ea45e'

  url "https://download.mozilla.org/?product=firefox-#{version}&os=osx&lang=ja-JP-mac"
  homepage 'http://www.mozilla.org/ja/firefox/channel/beta'
  license :mpl

  app 'Firefox.app'
end
