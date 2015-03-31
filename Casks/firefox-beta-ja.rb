cask :v1 => 'firefox-beta-ja' do
  version '37.0b7'
  sha256 '456e4d84f544edd57659ba64b3d98b98d10e4b48dad2dfa64429ec963c5e39a4'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ja-JP-mac"
  homepage 'http://www.mozilla.org/ja/firefox/channel/beta'
  license :mpl

  app 'Firefox.app'
end
