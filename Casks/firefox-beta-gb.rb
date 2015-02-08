cask :v1 => 'firefox-beta-gb' do
  version '36.0b7'
  sha256 'e490e7208eb0dbfc9831a4049a8602b4da84f98819503b5c983aaa69a33e92ce'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=en-GB"
  homepage 'https://www.mozilla.org/en-GB/firefox/beta/'
  license :mpl

  app 'Firefox.app'
end
