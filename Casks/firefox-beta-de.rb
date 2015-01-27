cask :v1 => 'firefox-beta-de' do
  version '36.0b3'
  sha256 '9e993864298af8684351576f9af5e7a93edf1d8d7fb234cdec9ba11d7fcc1f1c'

  url "https://download.mozilla.org/?product=firefox-#{version}&os=osx&lang=de"
  homepage 'https://www.mozilla.org/de/firefox/beta/'
  license :mpl

  app 'Firefox.app'
end
