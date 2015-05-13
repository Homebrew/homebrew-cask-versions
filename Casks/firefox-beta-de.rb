cask :v1 => 'firefox-beta-de' do
  version '38.0.5b1'
  sha256 '7b019293087e9852e192665a4ec538d6b2109b558f937b74b13e073f14287cf6'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=de"
  homepage 'https://www.mozilla.org/de/firefox/beta/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Firefox.app'
end
