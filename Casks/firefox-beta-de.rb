cask :v1 => 'firefox-beta-de' do
  version '36.0b5'
  sha256 '8fdf618c93cc2a0ac102b2b2b3209d0c437b287b1ed4eef6898a69d69278fa90'

  url "https://download.mozilla.org/?product=firefox-#{version}&os=osx&lang=de"
  homepage 'https://www.mozilla.org/de/firefox/beta/'
  license :mpl

  app 'Firefox.app'
end
