cask :v1 => 'firefox-beta-ru' do
  version '39.0b5'
  sha256 '5195c859b083a003a8fd825f8d115f338ce0c7a91d2bed50ed37f0ba27d778a1'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ru"
  homepage 'https://www.mozilla.org/ru/firefox/channel/#beta'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'
end
