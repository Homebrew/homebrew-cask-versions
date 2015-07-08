cask :v1 => 'firefox-beta-ja' do
  version '40.0b2'
  sha256 '27f4a4ee16f2f00090673afb642ec00d4c7c14433c0803e41108206793b5ad76'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ja-JP-mac"
  homepage 'https://www.mozilla.org/ja/firefox/channel/beta'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'
end
