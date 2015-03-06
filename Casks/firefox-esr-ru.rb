cask :v1 => 'firefox-esr-ru' do
  version '31.5.0'
  sha256 'b708414c5265cd75b147a129efeccd37d053fa67c1011c22cb80adc528950d18'

  url "https://download.mozilla.org/?product=firefox-#{version}esr-SSL&os=osx&lang=ru"
  homepage 'https://www.mozilla.org/ru/firefox/organizations/'
  license :mpl

  app 'Firefox.app'
end
