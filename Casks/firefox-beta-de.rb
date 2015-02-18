cask :v1 => 'firefox-beta-de' do
  version '36.0b7'
  sha256 'b23a64b74a2d8f4a8c03e5d88a5b1a7710d810115f8610c333f8d06d3cb23e74'

  url "https://download.mozilla.org/?product=firefox-#{version}&os=osx&lang=de"
  homepage 'https://www.mozilla.org/de/firefox/beta/'
  license :mpl

  app 'Firefox.app'
end
