cask :v1 => 'firefox-beta-de' do
  version '38.0b9'
  sha256 '4b33ab0349f6718e8fe5e0afb4b9e2bdccdd2c8b4ada66ff245a83103064d273'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=de"
  homepage 'https://www.mozilla.org/de/firefox/beta/'
  license :mpl

  app 'Firefox.app'
end
