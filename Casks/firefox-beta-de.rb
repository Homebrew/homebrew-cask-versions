cask :v1 => 'firefox-beta-de' do
  version '36.0b1'
  sha256 'bca3bfed105d7749d4ecb88072897bb6947bbc69dbcca75e14186733077ce2e6'

  url "https://download.mozilla.org/?product=firefox-#{version}&os=osx&lang=de"
  homepage 'https://www.mozilla.org/de/firefox/beta/'
  license :mpl

  app 'Firefox.app'
end
