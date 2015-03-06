cask :v1 => 'firefox-beta-ja' do
  version '37.0b2'
  sha256 '4df6efb8d3950ac9fd8840b3c658c8953cf4989ff1dd14cbd2ef71f1d4a06c49'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ja-JP-mac"
  homepage 'http://www.mozilla.org/ja/firefox/channel/beta'
  license :mpl

  app 'Firefox.app'
end
